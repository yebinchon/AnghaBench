
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int sec_alg_skcipher_crypto (struct skcipher_request*,int) ;

__attribute__((used)) static int sec_alg_skcipher_encrypt(struct skcipher_request *req)
{
 return sec_alg_skcipher_crypto(req, 1);
}
