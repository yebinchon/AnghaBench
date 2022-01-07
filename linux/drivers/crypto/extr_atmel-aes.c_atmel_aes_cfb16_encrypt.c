
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int AES_FLAGS_CFB16 ;
 int AES_FLAGS_ENCRYPT ;
 int atmel_aes_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int atmel_aes_cfb16_encrypt(struct ablkcipher_request *req)
{
 return atmel_aes_crypt(req, AES_FLAGS_CFB16 | AES_FLAGS_ENCRYPT);
}
