
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spacc_ablk_ctx {unsigned int key_len; int key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 unsigned int AES_MAX_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct spacc_ablk_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int spacc_kasumi_f8_setkey(struct crypto_ablkcipher *cipher,
      const u8 *key, unsigned int len)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
 int err = 0;

 if (len > AES_MAX_KEY_SIZE) {
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  err = -EINVAL;
  goto out;
 }

 memcpy(ctx->key, key, len);
 ctx->key_len = len;

out:
 return err;
}
