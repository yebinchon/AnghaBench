
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct sahara_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void sahara_aes_cra_exit(struct crypto_tfm *tfm)
{
 struct sahara_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(ctx->fallback);
}
