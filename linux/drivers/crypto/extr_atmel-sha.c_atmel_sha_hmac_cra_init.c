
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct atmel_sha_reqctx {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct atmel_sha_hmac_ctx {int hkey; TYPE_1__ base; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int atmel_sha_hmac_key_init (int *) ;
 int atmel_sha_hmac_start ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct atmel_sha_hmac_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int atmel_sha_hmac_cra_init(struct crypto_tfm *tfm)
{
 struct atmel_sha_hmac_ctx *hmac = crypto_tfm_ctx(tfm);

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct atmel_sha_reqctx));
 hmac->base.start = atmel_sha_hmac_start;
 atmel_sha_hmac_key_init(&hmac->hkey);

 return 0;
}
