terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "storage_account_name" {
  type = string
  description = "nameofstorage"
}
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
