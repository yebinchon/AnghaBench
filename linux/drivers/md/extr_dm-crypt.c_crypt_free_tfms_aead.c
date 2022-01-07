
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** tfms_aead; } ;
struct crypt_config {TYPE_1__ cipher_tfm; } ;


 int IS_ERR (int *) ;
 int crypto_free_aead (int *) ;
 int kfree (int **) ;

__attribute__((used)) static void crypt_free_tfms_aead(struct crypt_config *cc)
{
 if (!cc->cipher_tfm.tfms_aead)
  return;

 if (cc->cipher_tfm.tfms_aead[0] && !IS_ERR(cc->cipher_tfm.tfms_aead[0])) {
  crypto_free_aead(cc->cipher_tfm.tfms_aead[0]);
  cc->cipher_tfm.tfms_aead[0] = ((void*)0);
 }

 kfree(cc->cipher_tfm.tfms_aead);
 cc->cipher_tfm.tfms_aead = ((void*)0);
}
