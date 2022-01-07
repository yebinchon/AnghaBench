
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5p_aes_ctx {unsigned int keylen; int aes_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int EINVAL ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct s5p_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int s5p_aes_setkey(struct crypto_ablkcipher *cipher,
     const u8 *key, unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct s5p_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 if (keylen != AES_KEYSIZE_128 &&
     keylen != AES_KEYSIZE_192 &&
     keylen != AES_KEYSIZE_256)
  return -EINVAL;

 memcpy(ctx->aes_key, key, keylen);
 ctx->keylen = keylen;

 return 0;
}
