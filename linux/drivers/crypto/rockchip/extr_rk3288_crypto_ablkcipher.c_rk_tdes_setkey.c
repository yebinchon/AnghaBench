
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rk_cipher_ctx {unsigned int keylen; TYPE_1__* dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 scalar_t__ RK_CRYPTO_TDES_KEY1_0 ;
 struct rk_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy_toio (scalar_t__,int const*,unsigned int) ;
 int verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int rk_tdes_setkey(struct crypto_ablkcipher *cipher,
     const u8 *key, unsigned int keylen)
{
 struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 int err;

 err = verify_ablkcipher_des3_key(cipher, key);
 if (err)
  return err;

 ctx->keylen = keylen;
 memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
 return 0;
}
