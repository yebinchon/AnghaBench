
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32_cryp_ctx {unsigned int keylen; int key; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct stm32_cryp_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int stm32_cryp_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
        unsigned int keylen)
{
 struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(tfm);

 memcpy(ctx->key, key, keylen);
 ctx->keylen = keylen;

 return 0;
}
