
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aes_ctx {int * key_enc; } ;
typedef struct crypto_aes_ctx u32 ;
struct safexcel_crypto_priv {int flags; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__* key; unsigned int key_len; scalar_t__* ipad; TYPE_1__ base; int hkaes; struct safexcel_crypto_priv* priv; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef int aes ;


 int AES_BLOCK_SIZE ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EIP197_TRC_CACHE ;
 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 scalar_t__ cpu_to_be32 (struct crypto_aes_ctx) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 int crypto_cipher_clear_flags (int ,int) ;
 int crypto_cipher_encrypt_one (int ,int *,int *) ;
 int crypto_cipher_get_flags (int ) ;
 int crypto_cipher_set_flags (int ,int) ;
 int crypto_cipher_setkey (int ,int const*,unsigned int) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memset (struct crypto_aes_ctx*,int ,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;

__attribute__((used)) static int safexcel_aead_gcm_setkey(struct crypto_aead *ctfm, const u8 *key,
        unsigned int len)
{
 struct crypto_tfm *tfm = crypto_aead_tfm(ctfm);
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 struct safexcel_crypto_priv *priv = ctx->priv;
 struct crypto_aes_ctx aes;
 u32 hashkey[AES_BLOCK_SIZE >> 2];
 int ret, i;

 ret = aes_expandkey(&aes, key, len);
 if (ret) {
  crypto_aead_set_flags(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  memzero_explicit(&aes, sizeof(aes));
  return ret;
 }

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
  for (i = 0; i < len / sizeof(u32); i++) {
   if (ctx->key[i] != cpu_to_le32(aes.key_enc[i])) {
    ctx->base.needs_inv = 1;
    break;
   }
  }
 }

 for (i = 0; i < len / sizeof(u32); i++)
  ctx->key[i] = cpu_to_le32(aes.key_enc[i]);

 ctx->key_len = len;


 crypto_cipher_clear_flags(ctx->hkaes, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(ctx->hkaes, crypto_aead_get_flags(ctfm) &
    CRYPTO_TFM_REQ_MASK);
 ret = crypto_cipher_setkey(ctx->hkaes, key, len);
 crypto_aead_set_flags(ctfm, crypto_cipher_get_flags(ctx->hkaes) &
         CRYPTO_TFM_RES_MASK);
 if (ret)
  return ret;

 memset(hashkey, 0, AES_BLOCK_SIZE);
 crypto_cipher_encrypt_one(ctx->hkaes, (u8 *)hashkey, (u8 *)hashkey);

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma) {
  for (i = 0; i < AES_BLOCK_SIZE / sizeof(u32); i++) {
   if (ctx->ipad[i] != cpu_to_be32(hashkey[i])) {
    ctx->base.needs_inv = 1;
    break;
   }
  }
 }

 for (i = 0; i < AES_BLOCK_SIZE / sizeof(u32); i++)
  ctx->ipad[i] = cpu_to_be32(hashkey[i]);

 memzero_explicit(hashkey, AES_BLOCK_SIZE);
 memzero_explicit(&aes, sizeof(aes));
 return 0;
}
