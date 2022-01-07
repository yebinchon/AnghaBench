
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct safexcel_crypto_priv {int flags; } ;
struct safexcel_ahash_export_state {int state; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr; } ;
struct safexcel_ahash_ctx {int opad; int ipad; TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_ahash {int dummy; } ;


 int EIP197_TRC_CACHE ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct safexcel_ahash_ctx* crypto_tfm_ctx (int ) ;
 scalar_t__ memcmp (int ,int ,unsigned int) ;
 int memcpy (int ,int *,unsigned int) ;
 int safexcel_hmac_setkey (char const*,int const*,unsigned int,struct safexcel_ahash_export_state*,struct safexcel_ahash_export_state*) ;

__attribute__((used)) static int safexcel_hmac_alg_setkey(struct crypto_ahash *tfm, const u8 *key,
        unsigned int keylen, const char *alg,
        unsigned int state_sz)
{
 struct safexcel_ahash_ctx *ctx = crypto_tfm_ctx(crypto_ahash_tfm(tfm));
 struct safexcel_crypto_priv *priv = ctx->priv;
 struct safexcel_ahash_export_state istate, ostate;
 int ret;

 ret = safexcel_hmac_setkey(alg, key, keylen, &istate, &ostate);
 if (ret)
  return ret;

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr &&
     (memcmp(ctx->ipad, istate.state, state_sz) ||
      memcmp(ctx->opad, ostate.state, state_sz)))
  ctx->base.needs_inv = 1;

 memcpy(ctx->ipad, &istate.state, state_sz);
 memcpy(ctx->opad, &ostate.state, state_sz);

 return 0;
}
