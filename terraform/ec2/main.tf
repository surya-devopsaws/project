provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
  //#access_key = ""
  //#secret_key = ""
}

resource "aws_instance" "project1" {
  tags = {
    Name = "project"
  }
  //ami           = "ami-03f4878755434977f"  # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type
  key_name      = "qtree"  # Replace with your key pair name
  subnet_id       = "subnet-07dde7003a212c97c"
  security_groups = ["sg-00e0d1b2f8f18ef3c"]
  associate_public_ip_address = true

}
