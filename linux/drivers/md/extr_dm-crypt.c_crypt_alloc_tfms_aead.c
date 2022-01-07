
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_5__ {int * tfms_aead; int tfms; } ;
struct crypt_config {TYPE_2__ cipher_tfm; } ;
struct TYPE_4__ {int cra_driver_name; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int DMDEBUG_LIMIT (char*,char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int any_tfm_aead (struct crypt_config*) ;
 int crypt_free_tfms (struct crypt_config*) ;
 TYPE_3__* crypto_aead_alg (int ) ;
 int crypto_alloc_aead (char*,int ,int ) ;
 int kmalloc (int,int ) ;

__attribute__((used)) static int crypt_alloc_tfms_aead(struct crypt_config *cc, char *ciphermode)
{
 int err;

 cc->cipher_tfm.tfms = kmalloc(sizeof(struct crypto_aead *), GFP_KERNEL);
 if (!cc->cipher_tfm.tfms)
  return -ENOMEM;

 cc->cipher_tfm.tfms_aead[0] = crypto_alloc_aead(ciphermode, 0, 0);
 if (IS_ERR(cc->cipher_tfm.tfms_aead[0])) {
  err = PTR_ERR(cc->cipher_tfm.tfms_aead[0]);
  crypt_free_tfms(cc);
  return err;
 }

 DMDEBUG_LIMIT("%s using implementation \"%s\"", ciphermode,
        crypto_aead_alg(any_tfm_aead(cc))->base.cra_driver_name);
 return 0;
}
