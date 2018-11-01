resource "random_id" "password" {
  byte_length = 8
}


resource "null_resource" "password" {
  provisioner "local-exec" {
    command = "echo Your password is ${random_id.password.b64_url}"
  }
}