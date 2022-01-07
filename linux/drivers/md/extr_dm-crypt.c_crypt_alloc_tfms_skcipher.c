
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {int * tfms; } ;
struct crypt_config {unsigned int tfms_count; TYPE_1__ cipher_tfm; } ;
struct TYPE_5__ {int cra_driver_name; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 int DMDEBUG_LIMIT (char*,char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int any_tfm (struct crypt_config*) ;
 int crypt_free_tfms (struct crypt_config*) ;
 int crypto_alloc_skcipher (char*,int ,int ) ;
 TYPE_3__* crypto_skcipher_alg (int ) ;
 int * kcalloc (unsigned int,int,int ) ;

__attribute__((used)) static int crypt_alloc_tfms_skcipher(struct crypt_config *cc, char *ciphermode)
{
 unsigned i;
 int err;

 cc->cipher_tfm.tfms = kcalloc(cc->tfms_count,
          sizeof(struct crypto_skcipher *),
          GFP_KERNEL);
 if (!cc->cipher_tfm.tfms)
  return -ENOMEM;

 for (i = 0; i < cc->tfms_count; i++) {
  cc->cipher_tfm.tfms[i] = crypto_alloc_skcipher(ciphermode, 0, 0);
  if (IS_ERR(cc->cipher_tfm.tfms[i])) {
   err = PTR_ERR(cc->cipher_tfm.tfms[i]);
   crypt_free_tfms(cc);
   return err;
  }
 }






 DMDEBUG_LIMIT("%s using implementation \"%s\"", ciphermode,
        crypto_skcipher_alg(any_tfm(cc))->base.cra_driver_name);
 return 0;
}
