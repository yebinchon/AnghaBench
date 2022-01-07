
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cvm_enc_ctx {int enc_key; int cipher_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct cvm_enc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int cvm_validate_keylen (struct cvm_enc_ctx*,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int cvm_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
        u32 keylen, u8 cipher_type)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct cvm_enc_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->cipher_type = cipher_type;
 if (!cvm_validate_keylen(ctx, keylen)) {
  memcpy(ctx->enc_key, key, keylen);
  return 0;
 } else {
  crypto_ablkcipher_set_flags(cipher,
         CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
}
