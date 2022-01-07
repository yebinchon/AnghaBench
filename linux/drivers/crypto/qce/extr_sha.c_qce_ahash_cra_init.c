
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_sha_reqctx {int dummy; } ;
struct qce_sha_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (struct crypto_ahash*,int) ;
 struct qce_sha_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memset (struct qce_sha_ctx*,int ,int) ;

__attribute__((used)) static int qce_ahash_cra_init(struct crypto_tfm *tfm)
{
 struct crypto_ahash *ahash = __crypto_ahash_cast(tfm);
 struct qce_sha_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_ahash_set_reqsize(ahash, sizeof(struct qce_sha_reqctx));
 memset(ctx, 0, sizeof(*ctx));
 return 0;
}
