
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dcp_async_ctx {unsigned int key_len; int fallback; int key; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;


 unsigned int AES_KEYSIZE_128 ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 struct dcp_async_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_sync_skcipher_clear_flags (int ,int) ;
 int crypto_sync_skcipher_get_flags (int ) ;
 int crypto_sync_skcipher_set_flags (int ,int) ;
 unsigned int crypto_sync_skcipher_setkey (int ,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int mxs_dcp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
         unsigned int len)
{
 struct dcp_async_ctx *actx = crypto_ablkcipher_ctx(tfm);
 unsigned int ret;






 actx->key_len = len;
 if (len == AES_KEYSIZE_128) {
  memcpy(actx->key, key, len);
  return 0;
 }






 crypto_sync_skcipher_clear_flags(actx->fallback, CRYPTO_TFM_REQ_MASK);
 crypto_sync_skcipher_set_flags(actx->fallback,
      tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);

 ret = crypto_sync_skcipher_setkey(actx->fallback, key, len);
 if (!ret)
  return 0;

 tfm->base.crt_flags &= ~CRYPTO_TFM_RES_MASK;
 tfm->base.crt_flags |= crypto_sync_skcipher_get_flags(actx->fallback) &
          CRYPTO_TFM_RES_MASK;

 return ret;
}
