
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qce_cipher_ctx {unsigned int enc_keylen; int enc_key; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct qce_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int verify_ablkcipher_des_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int qce_des_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
     unsigned int keylen)
{
 struct qce_cipher_ctx *ctx = crypto_ablkcipher_ctx(ablk);
 int err;

 err = verify_ablkcipher_des_key(ablk, key);
 if (err)
  return err;

 ctx->enc_keylen = keylen;
 memcpy(ctx->enc_key, key, keylen);
 return 0;
}
