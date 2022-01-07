
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_cipher_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct qce_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void qce_ablkcipher_exit(struct crypto_tfm *tfm)
{
 struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(ctx->fallback);
}
