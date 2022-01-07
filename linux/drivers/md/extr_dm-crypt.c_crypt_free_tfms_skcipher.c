
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** tfms; } ;
struct crypt_config {unsigned int tfms_count; TYPE_1__ cipher_tfm; } ;


 int IS_ERR (int *) ;
 int crypto_free_skcipher (int *) ;
 int kfree (int **) ;

__attribute__((used)) static void crypt_free_tfms_skcipher(struct crypt_config *cc)
{
 unsigned i;

 if (!cc->cipher_tfm.tfms)
  return;

 for (i = 0; i < cc->tfms_count; i++)
  if (cc->cipher_tfm.tfms[i] && !IS_ERR(cc->cipher_tfm.tfms[i])) {
   crypto_free_skcipher(cc->cipher_tfm.tfms[i]);
   cc->cipher_tfm.tfms[i] = ((void*)0);
  }

 kfree(cc->cipher_tfm.tfms);
 cc->cipher_tfm.tfms = ((void*)0);
}
