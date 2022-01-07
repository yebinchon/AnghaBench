
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int nitrox_skcipher_crypt (struct skcipher_request*,int) ;

__attribute__((used)) static int nitrox_aes_decrypt(struct skcipher_request *skreq)
{
 return nitrox_skcipher_crypt(skreq, 0);
}
