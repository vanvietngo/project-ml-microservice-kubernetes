#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="vanvietonline/microproject:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run microproject --image=vanvietonline/microproject:v1.0.0  --port=80 --labels app=microproject
    # Step 3:
# List kubernetes pods
minikube kubectl -- get pods
# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward microproject 8000:80

# kubectl create secret docker-registry my-registry-secret --docker-server=vanvietonline --docker-username=vanvietonline --docker-password=123456789 --docker-email=viet.ngovanviet@gmail.com
docker pull vanvietonline/microproject:v1.0.0