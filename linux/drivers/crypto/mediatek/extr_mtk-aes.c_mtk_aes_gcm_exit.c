
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_aes_gcm_ctx {int ctr; } ;
struct crypto_aead {int dummy; } ;


 struct mtk_aes_gcm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_skcipher (int ) ;

__attribute__((used)) static void mtk_aes_gcm_exit(struct crypto_aead *aead)
{
 struct mtk_aes_gcm_ctx *ctx = crypto_aead_ctx(aead);

 crypto_free_skcipher(ctx->ctr);
}
