
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p8_aes_ctr_ctx {int fallback; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_free_skcipher (int ) ;
 struct p8_aes_ctr_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void p8_aes_ctr_exit(struct crypto_skcipher *tfm)
{
 struct p8_aes_ctr_ctx *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_skcipher(ctx->fallback);
}
