
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int des3; } ;
struct n2_cipher_context {unsigned int key_len; TYPE_1__ key; int enc_type; } ;
struct n2_cipher_alg {int enc_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct n2_cipher_context* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;
 struct n2_cipher_alg* n2_cipher_alg (struct crypto_tfm*) ;
 int verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int n2_3des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
     unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
 struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);
 int err;

 err = verify_ablkcipher_des3_key(cipher, key);
 if (err)
  return err;

 ctx->enc_type = n2alg->enc_type;

 ctx->key_len = keylen;
 memcpy(ctx->key.des3, key, keylen);
 return 0;
}
