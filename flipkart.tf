resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



 Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval = "30"
  monitoring_role_name = "MyRDSMonitoringRole"
  create_monitoring_role = true

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  # DB subnet group
  subnet_ids = ["subnet-12345678", "subnet-87654321"]

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"



