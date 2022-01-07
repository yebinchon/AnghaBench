
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct atmel_tdes_ctx {unsigned int keylen; int key; } ;


 struct atmel_tdes_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int atmel_tdes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
      unsigned int keylen)
{
 struct atmel_tdes_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 int err;

 err = verify_ablkcipher_des3_key(tfm, key);
 if (err)
  return err;

 memcpy(ctx->key, key, keylen);
 ctx->keylen = keylen;

 return 0;
}
