
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int cvm_enc_dec (struct ablkcipher_request*,int) ;

__attribute__((used)) static int cvm_decrypt(struct ablkcipher_request *req)
{
 return cvm_enc_dec(req, 0);
}
