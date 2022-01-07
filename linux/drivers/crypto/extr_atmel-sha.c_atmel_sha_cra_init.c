
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct atmel_sha_reqctx {int dummy; } ;
struct atmel_sha_ctx {int start; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int atmel_sha_start ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct atmel_sha_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int atmel_sha_cra_init(struct crypto_tfm *tfm)
{
 struct atmel_sha_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct atmel_sha_reqctx));
 ctx->start = atmel_sha_start;

 return 0;
}
