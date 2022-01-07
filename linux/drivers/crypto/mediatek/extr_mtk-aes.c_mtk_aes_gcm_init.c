
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_aes_reqctx {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct mtk_aes_gcm_ctx {TYPE_1__ base; int ctr; } ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct mtk_aes_gcm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;
 int crypto_alloc_skcipher (char*,int ,int ) ;
 int mtk_aes_gcm_start ;
 int pr_err (char*) ;

__attribute__((used)) static int mtk_aes_gcm_init(struct crypto_aead *aead)
{
 struct mtk_aes_gcm_ctx *ctx = crypto_aead_ctx(aead);

 ctx->ctr = crypto_alloc_skcipher("ctr(aes)", 0,
      CRYPTO_ALG_ASYNC);
 if (IS_ERR(ctx->ctr)) {
  pr_err("Error allocating ctr(aes)\n");
  return PTR_ERR(ctx->ctr);
 }

 crypto_aead_set_reqsize(aead, sizeof(struct mtk_aes_reqctx));
 ctx->base.start = mtk_aes_gcm_start;
 return 0;
}
