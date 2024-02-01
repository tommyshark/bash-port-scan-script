#!/bin/sh

for port in {1..65535}; do
  (echo >/dev/tcp/172.17.0.1/$port) >/dev/null 2>&1 &&
    echo "port $port is open" ||
    :
done
