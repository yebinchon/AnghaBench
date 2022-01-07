
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spacc_ablk_ctx {unsigned int key_len; int key; int sw_cipher; } ;
struct crypto_tfm {int crt_flags; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_256 ;
 unsigned int AES_MAX_KEY_SIZE ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int crypto_sync_skcipher_clear_flags (int ,int) ;
 int crypto_sync_skcipher_get_flags (int ) ;
 int crypto_sync_skcipher_set_flags (int ,int) ;
 int crypto_sync_skcipher_setkey (int ,int const*,unsigned int) ;
 struct spacc_ablk_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int spacc_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
       unsigned int len)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
 int err = 0;

 if (len > AES_MAX_KEY_SIZE) {
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }






 if (len != AES_KEYSIZE_128 && len != AES_KEYSIZE_256) {
  if (!ctx->sw_cipher)
   return -EINVAL;





  crypto_sync_skcipher_clear_flags(ctx->sw_cipher,
         CRYPTO_TFM_REQ_MASK);
  crypto_sync_skcipher_set_flags(ctx->sw_cipher,
       cipher->base.crt_flags &
       CRYPTO_TFM_REQ_MASK);

  err = crypto_sync_skcipher_setkey(ctx->sw_cipher, key, len);

  tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
  tfm->crt_flags |=
   crypto_sync_skcipher_get_flags(ctx->sw_cipher) &
   CRYPTO_TFM_RES_MASK;

  if (err)
   goto sw_setkey_failed;
 }

 memcpy(ctx->key, key, len);
 ctx->key_len = len;

sw_setkey_failed:
 return err;
}
