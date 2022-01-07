
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ctx {scalar_t__ keylen; } ;
struct talitos_ahash_req_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct talitos_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int talitos_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int talitos_cra_init_ahash(struct crypto_tfm *tfm)
{
 struct talitos_ctx *ctx = crypto_tfm_ctx(tfm);

 talitos_cra_init(tfm);

 ctx->keylen = 0;
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct talitos_ahash_req_ctx));

 return 0;
}
