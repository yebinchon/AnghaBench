
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int key; } ;
struct atmel_aes_xts_ctx {TYPE_1__ base; int key2; } ;


 struct atmel_aes_xts_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int xts_check_key (int ,int const*,unsigned int) ;

__attribute__((used)) static int atmel_aes_xts_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
    unsigned int keylen)
{
 struct atmel_aes_xts_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 int err;

 err = xts_check_key(crypto_ablkcipher_tfm(tfm), key, keylen);
 if (err)
  return err;

 memcpy(ctx->base.key, key, keylen/2);
 memcpy(ctx->key2, key + keylen/2, keylen/2);
 ctx->base.keylen = keylen/2;

 return 0;
}
