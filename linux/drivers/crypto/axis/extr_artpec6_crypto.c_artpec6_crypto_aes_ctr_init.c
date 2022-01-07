
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int reqsize; int base; } ;
struct artpec6_cryptotfm_context {int crypto_type; int fallback; } ;
struct artpec6_crypto_request_context {int dummy; } ;


 int ARTPEC6_CRYPTO_CIPHER_AES_CTR ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_sync_skcipher (int ,int ,int ) ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_tfm_alg_name (int *) ;

__attribute__((used)) static int artpec6_crypto_aes_ctr_init(struct crypto_skcipher *tfm)
{
 struct artpec6_cryptotfm_context *ctx = crypto_skcipher_ctx(tfm);

 ctx->fallback =
  crypto_alloc_sync_skcipher(crypto_tfm_alg_name(&tfm->base),
        0, CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(ctx->fallback))
  return PTR_ERR(ctx->fallback);

 tfm->reqsize = sizeof(struct artpec6_crypto_request_context);
 ctx->crypto_type = ARTPEC6_CRYPTO_CIPHER_AES_CTR;

 return 0;
}
