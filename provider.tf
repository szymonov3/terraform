# provider

provider "aws" {
  region  = "us-east-1"
  #profile = "panda"
}

# terraform

terraform {
  backend "s3" {
    bucket = "szymon-stachow-panda-devops-core-16"
    key = "infra/terraform.state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
}