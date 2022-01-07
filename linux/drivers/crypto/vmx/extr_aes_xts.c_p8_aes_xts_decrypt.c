
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int p8_aes_xts_crypt (struct skcipher_request*,int ) ;

__attribute__((used)) static int p8_aes_xts_decrypt(struct skcipher_request *req)
{
 return p8_aes_xts_crypt(req, 0);
}
