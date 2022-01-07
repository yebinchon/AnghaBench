
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qce_cipher_reqctx {int dummy; } ;
struct qce_cipher_ctx {int fallback; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 int PTR_ERR_OR_ZERO (int ) ;
 int crypto_alloc_sync_skcipher (int ,int ,int ) ;
 int crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct qce_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memset (struct qce_cipher_ctx*,int ,int) ;

__attribute__((used)) static int qce_ablkcipher_init(struct crypto_tfm *tfm)
{
 struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 memset(ctx, 0, sizeof(*ctx));
 tfm->crt_ablkcipher.reqsize = sizeof(struct qce_cipher_reqctx);

 ctx->fallback = crypto_alloc_sync_skcipher(crypto_tfm_alg_name(tfm),
         0, CRYPTO_ALG_NEED_FALLBACK);
 return PTR_ERR_OR_ZERO(ctx->fallback);
}
