
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_hmac_ctx {int shash; } ;
struct mtk_sha_ctx {int flags; struct mtk_sha_hmac_ctx* base; } ;
struct crypto_tfm {int dummy; } ;


 int SHA_FLAGS_HMAC ;
 int crypto_free_shash (int ) ;
 struct mtk_sha_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void mtk_sha_cra_exit(struct crypto_tfm *tfm)
{
 struct mtk_sha_ctx *tctx = crypto_tfm_ctx(tfm);

 if (tctx->flags & SHA_FLAGS_HMAC) {
  struct mtk_sha_hmac_ctx *bctx = tctx->base;

  crypto_free_shash(bctx->shash);
 }
}
