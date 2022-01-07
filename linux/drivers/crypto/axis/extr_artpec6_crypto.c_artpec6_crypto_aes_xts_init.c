
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int reqsize; } ;
struct artpec6_cryptotfm_context {int crypto_type; } ;
struct artpec6_crypto_request_context {int dummy; } ;


 int ARTPEC6_CRYPTO_CIPHER_AES_XTS ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static int artpec6_crypto_aes_xts_init(struct crypto_skcipher *tfm)
{
 struct artpec6_cryptotfm_context *ctx = crypto_skcipher_ctx(tfm);

 tfm->reqsize = sizeof(struct artpec6_crypto_request_context);
 ctx->crypto_type = ARTPEC6_CRYPTO_CIPHER_AES_XTS;

 return 0;
}
