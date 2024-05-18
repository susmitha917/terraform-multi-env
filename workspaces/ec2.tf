resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0f43d0bd748c5c8ee"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}