
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p8_aes_ctx {int * fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_cipher (int *) ;
 struct p8_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void p8_aes_exit(struct crypto_tfm *tfm)
{
 struct p8_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 if (ctx->fallback) {
  crypto_free_cipher(ctx->fallback);
  ctx->fallback = ((void*)0);
 }
}
