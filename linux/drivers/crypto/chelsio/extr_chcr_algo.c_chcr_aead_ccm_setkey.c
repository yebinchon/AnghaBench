
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {struct crypto_aead* sw_cipher; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int a_ctx (struct crypto_aead*) ;
 int chcr_ccm_common_setkey (struct crypto_aead*,int const*,unsigned int) ;
 int crypto_aead_clear_flags (struct crypto_aead*,int) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int chcr_aead_ccm_setkey(struct crypto_aead *aead,
    const u8 *key,
    unsigned int keylen)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(aead));
 int error;

 crypto_aead_clear_flags(aeadctx->sw_cipher, CRYPTO_TFM_REQ_MASK);
 crypto_aead_set_flags(aeadctx->sw_cipher, crypto_aead_get_flags(aead) &
         CRYPTO_TFM_REQ_MASK);
 error = crypto_aead_setkey(aeadctx->sw_cipher, key, keylen);
 crypto_aead_clear_flags(aead, CRYPTO_TFM_RES_MASK);
 crypto_aead_set_flags(aead, crypto_aead_get_flags(aeadctx->sw_cipher) &
         CRYPTO_TFM_RES_MASK);
 if (error)
  return error;
 return chcr_ccm_common_setkey(aead, key, keylen);
}
