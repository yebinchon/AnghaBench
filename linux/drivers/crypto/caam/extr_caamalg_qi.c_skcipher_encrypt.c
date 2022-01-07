
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int skcipher_crypt (struct skcipher_request*,int) ;

__attribute__((used)) static int skcipher_encrypt(struct skcipher_request *req)
{
 return skcipher_crypt(req, 1);
}
