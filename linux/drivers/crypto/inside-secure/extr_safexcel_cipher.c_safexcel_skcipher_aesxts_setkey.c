
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef int u32 ;
struct safexcel_crypto_priv {int flags; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__* key; unsigned int key_len; TYPE_1__ base; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int * key_enc; } ;
typedef int aes ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EIP197_TRC_CACHE ;
 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;
 int xts_verify_key (struct crypto_skcipher*,int const*,unsigned int) ;

__attribute__((used)) static int safexcel_skcipher_aesxts_setkey(struct crypto_skcipher *ctfm,
        const u8 *key, unsigned int len)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(ctfm);
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 struct safexcel_crypto_priv *priv = ctx->priv;
 struct crypto_aes_ctx aes;
 int ret, i;
 unsigned int keylen;


 ret = xts_verify_key(ctfm, key, len);
 if (ret)
  return ret;


 keylen = (len >> 1);
 ret = aes_expandkey(&aes, key, keylen);
 if (ret) {
  crypto_skcipher_set_flags(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return ret;
 }

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
  for (i = 0; i < keylen / sizeof(u32); i++) {
   if (ctx->key[i] != cpu_to_le32(aes.key_enc[i])) {
    ctx->base.needs_inv = 1;
    break;
   }
  }
 }

 for (i = 0; i < keylen / sizeof(u32); i++)
  ctx->key[i] = cpu_to_le32(aes.key_enc[i]);


 ret = aes_expandkey(&aes, (u8 *)(key + keylen), keylen);
 if (ret) {
  crypto_skcipher_set_flags(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return ret;
 }

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
  for (i = 0; i < keylen / sizeof(u32); i++) {
   if (ctx->key[i + keylen / sizeof(u32)] !=
       cpu_to_le32(aes.key_enc[i])) {
    ctx->base.needs_inv = 1;
    break;
   }
  }
 }

 for (i = 0; i < keylen / sizeof(u32); i++)
  ctx->key[i + keylen / sizeof(u32)] =
   cpu_to_le32(aes.key_enc[i]);

 ctx->key_len = keylen << 1;

 memzero_explicit(&aes, sizeof(aes));
 return 0;
}
