
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int base; } ;
struct artpec6_cryptotfm_context {unsigned int key_length; int aes_key; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 struct artpec6_cryptotfm_context* crypto_tfm_ctx (int *) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int artpec6_crypto_aead_set_key(struct crypto_aead *tfm, const u8 *key,
          unsigned int len)
{
 struct artpec6_cryptotfm_context *ctx = crypto_tfm_ctx(&tfm->base);

 if (len != 16 && len != 24 && len != 32) {
  crypto_aead_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -1;
 }

 ctx->key_length = len;

 memcpy(ctx->aes_key, key, len);
 return 0;
}
