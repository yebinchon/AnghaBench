
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int artpec6_crypto_ctr_crypt (struct skcipher_request*,int) ;

__attribute__((used)) static int artpec6_crypto_ctr_decrypt(struct skcipher_request *req)
{
 return artpec6_crypto_ctr_crypt(req, 0);
}
