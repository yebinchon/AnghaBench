
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_ahash (int ) ;
 struct img_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void img_hash_cra_exit(struct crypto_tfm *tfm)
{
 struct img_hash_ctx *tctx = crypto_tfm_ctx(tfm);

 crypto_free_ahash(tctx->fallback);
}
