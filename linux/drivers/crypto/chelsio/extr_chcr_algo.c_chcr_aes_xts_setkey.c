
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct ablk_ctx {unsigned int enckey_len; int ciph_mode; int key_ctx_hdr; int key; int rrkey; } ;


 struct ablk_ctx* ABLK_CTX (int ) ;
 unsigned int AES_KEYSIZE_256 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ;
 int CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ;
 int CHCR_KEYCTX_NO_KEY ;
 int CHCR_SCMD_CIPHER_MODE_AES_XTS ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int FILL_KEY_CTX_HDR (int ,int ,int,int ,unsigned short) ;
 unsigned int KEY_CONTEXT_HDR_SALT_AND_PAD ;
 int c_ctx (struct crypto_ablkcipher*) ;
 int chcr_cipher_fallback_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int get_aes_decrypt_key (int ,int ,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int chcr_aes_xts_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
          unsigned int key_len)
{
 struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(cipher));
 unsigned short context_size = 0;
 int err;

 err = chcr_cipher_fallback_setkey(cipher, key, key_len);
 if (err)
  goto badkey_err;

 memcpy(ablkctx->key, key, key_len);
 ablkctx->enckey_len = key_len;
 get_aes_decrypt_key(ablkctx->rrkey, ablkctx->key, key_len << 2);
 context_size = (KEY_CONTEXT_HDR_SALT_AND_PAD + key_len) >> 4;
 ablkctx->key_ctx_hdr =
  FILL_KEY_CTX_HDR((key_len == AES_KEYSIZE_256) ?
     CHCR_KEYCTX_CIPHER_KEY_SIZE_128 :
     CHCR_KEYCTX_CIPHER_KEY_SIZE_256,
     CHCR_KEYCTX_NO_KEY, 1,
     0, context_size);
 ablkctx->ciph_mode = CHCR_SCMD_CIPHER_MODE_AES_XTS;
 return 0;
badkey_err:
 crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 ablkctx->enckey_len = 0;

 return err;
}
