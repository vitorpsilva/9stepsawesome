#!/bin/bash

IMAGE_VER=boot-demo:1.0.0

docker build -f Dockerfile -t dev.local/burrsutter/$IMAGE_VER .
docker login docker.io
docker tag dev.local/burrsutter/$IMAGE_VER docker.io/burrsutter/$IMAGE_VER
docker push docker.io/burrsutter/$IMAGE_VER
