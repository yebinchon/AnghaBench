
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int fallback; } ;


 int artpec6_crypto_aes_exit (struct crypto_skcipher*) ;
 int crypto_free_sync_skcipher (int ) ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void artpec6_crypto_aes_ctr_exit(struct crypto_skcipher *tfm)
{
 struct artpec6_cryptotfm_context *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_sync_skcipher(ctx->fallback);
 artpec6_crypto_aes_exit(tfm);
}
