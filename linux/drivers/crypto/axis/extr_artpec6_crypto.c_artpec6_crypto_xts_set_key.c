
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int base; } ;
struct artpec6_cryptotfm_context {unsigned int key_length; int aes_key; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int xts_check_key (int *,int const*,unsigned int) ;

__attribute__((used)) static int
artpec6_crypto_xts_set_key(struct crypto_skcipher *cipher, const u8 *key,
         unsigned int keylen)
{
 struct artpec6_cryptotfm_context *ctx =
  crypto_skcipher_ctx(cipher);
 int ret;

 ret = xts_check_key(&cipher->base, key, keylen);
 if (ret)
  return ret;

 switch (keylen) {
 case 32:
 case 48:
 case 64:
  break;
 default:
  crypto_skcipher_set_flags(cipher,
       CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 memcpy(ctx->aes_key, key, keylen);
 ctx->key_length = keylen;
 return 0;
}
