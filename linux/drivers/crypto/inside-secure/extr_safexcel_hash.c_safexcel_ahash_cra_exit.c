
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_crypto_priv {int flags; int context_pool; int dev; } ;
struct TYPE_2__ {int ctxr_dma; int ctxr; } ;
struct safexcel_ahash_ctx {TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;


 int EIP197_TRC_CACHE ;
 struct safexcel_ahash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dev_warn (int ,char*,int) ;
 int dma_pool_free (int ,int ,int ) ;
 int safexcel_ahash_exit_inv (struct crypto_tfm*) ;

__attribute__((used)) static void safexcel_ahash_cra_exit(struct crypto_tfm *tfm)
{
 struct safexcel_ahash_ctx *ctx = crypto_tfm_ctx(tfm);
 struct safexcel_crypto_priv *priv = ctx->priv;
 int ret;


 if (!ctx->base.ctxr)
  return;

 if (priv->flags & EIP197_TRC_CACHE) {
  ret = safexcel_ahash_exit_inv(tfm);
  if (ret)
   dev_warn(priv->dev, "hash: invalidation error %d\n", ret);
 } else {
  dma_pool_free(priv->context_pool, ctx->base.ctxr,
         ctx->base.ctxr_dma);
 }
}
