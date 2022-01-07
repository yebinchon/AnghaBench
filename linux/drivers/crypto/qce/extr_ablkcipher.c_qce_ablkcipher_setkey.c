
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qce_cipher_ctx {unsigned int enc_keylen; int fallback; int enc_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;




 int EINVAL ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int crypto_sync_skcipher_setkey (int ,int const*,unsigned int) ;
 struct qce_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int qce_ablkcipher_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
     unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(ablk);
 struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 int ret;

 if (!key || !keylen)
  return -EINVAL;

 switch (keylen) {
 case 129:
 case 128:
  break;
 default:
  goto fallback;
 }

 ctx->enc_keylen = keylen;
 memcpy(ctx->enc_key, key, keylen);
 return 0;
fallback:
 ret = crypto_sync_skcipher_setkey(ctx->fallback, key, keylen);
 if (!ret)
  ctx->enc_keylen = keylen;
 return ret;
}
