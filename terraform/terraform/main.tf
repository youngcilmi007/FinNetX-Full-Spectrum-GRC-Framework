# Example misconfigured S3 bucket (will trigger tfsec/Checkov findings)

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bad_example" {
  bucket = "finnetx-noncompliant-bucket"
  acl    = "public-read"   # ❌ BAD: public bucket, tfsec will flag this
}