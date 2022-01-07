
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct crypto_ablkcipher {int dummy; } ;
struct ablk_ctx {unsigned int enckey_len; int ciph_mode; int key_ctx_hdr; int key; } ;


 struct ablk_ctx* ABLK_CTX (int ) ;
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ;
 int CHCR_KEYCTX_NO_KEY ;
 int CHCR_SCMD_CIPHER_MODE_AES_CTR ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int FILL_KEY_CTX_HDR (unsigned int,int ,int ,int ,unsigned int) ;
 unsigned int KEY_CONTEXT_HDR_SALT_AND_PAD ;
 int c_ctx (struct crypto_ablkcipher*) ;
 int chcr_cipher_fallback_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 unsigned int chcr_keyctx_ck_size (unsigned int) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int chcr_aes_ctr_setkey(struct crypto_ablkcipher *cipher,
       const u8 *key,
       unsigned int keylen)
{
 struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(cipher));
 unsigned int ck_size, context_size;
 u16 alignment = 0;
 int err;

 err = chcr_cipher_fallback_setkey(cipher, key, keylen);
 if (err)
  goto badkey_err;
 ck_size = chcr_keyctx_ck_size(keylen);
 alignment = (ck_size == CHCR_KEYCTX_CIPHER_KEY_SIZE_192) ? 8 : 0;
 memcpy(ablkctx->key, key, keylen);
 ablkctx->enckey_len = keylen;
 context_size = (KEY_CONTEXT_HDR_SALT_AND_PAD +
   keylen + alignment) >> 4;

 ablkctx->key_ctx_hdr = FILL_KEY_CTX_HDR(ck_size, CHCR_KEYCTX_NO_KEY,
      0, 0, context_size);
 ablkctx->ciph_mode = CHCR_SCMD_CIPHER_MODE_AES_CTR;

 return 0;
badkey_err:
 crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 ablkctx->enckey_len = 0;

 return err;
}
