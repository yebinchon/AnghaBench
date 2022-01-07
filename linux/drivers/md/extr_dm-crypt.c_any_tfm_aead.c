
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead** tfms_aead; } ;
struct crypt_config {TYPE_1__ cipher_tfm; } ;



__attribute__((used)) static struct crypto_aead *any_tfm_aead(struct crypt_config *cc)
{
 return cc->cipher_tfm.tfms_aead[0];
}
