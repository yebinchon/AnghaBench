
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int TDES_FLAGS_CBC ;
 int TDES_FLAGS_ENCRYPT ;
 int atmel_tdes_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int atmel_tdes_cbc_encrypt(struct ablkcipher_request *req)
{
 return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CBC);
}
