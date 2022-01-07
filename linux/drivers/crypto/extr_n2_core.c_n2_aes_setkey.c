
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int aes; } ;
struct n2_cipher_context {int enc_type; unsigned int key_len; TYPE_1__ key; } ;
struct n2_cipher_alg {int enc_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;





 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ENC_TYPE_ALG_AES128 ;
 int ENC_TYPE_ALG_AES192 ;
 int ENC_TYPE_ALG_AES256 ;
 int ENC_TYPE_CHAINING_MASK ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct n2_cipher_context* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;
 struct n2_cipher_alg* n2_cipher_alg (struct crypto_tfm*) ;

__attribute__((used)) static int n2_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
    unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
 struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);

 ctx->enc_type = (n2alg->enc_type & ENC_TYPE_CHAINING_MASK);

 switch (keylen) {
 case 130:
  ctx->enc_type |= ENC_TYPE_ALG_AES128;
  break;
 case 129:
  ctx->enc_type |= ENC_TYPE_ALG_AES192;
  break;
 case 128:
  ctx->enc_type |= ENC_TYPE_ALG_AES256;
  break;
 default:
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 ctx->key_len = keylen;
 memcpy(ctx->key.aes, key, keylen);
 return 0;
}
