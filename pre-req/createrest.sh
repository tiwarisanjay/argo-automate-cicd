#!/bin/bash
GITHUB_SECRET=$1
kubectl create configmap kube-context -n workflows --from-file${HOME}/.kube/config 
kubectl create secret generic github-access --from-literal=token=${GITHUB_SECRET}