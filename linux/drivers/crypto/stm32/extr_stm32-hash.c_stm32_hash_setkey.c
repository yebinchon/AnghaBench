
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32_hash_ctx {unsigned int keylen; int key; } ;
struct crypto_ahash {int dummy; } ;


 int ENOMEM ;
 unsigned int HASH_MAX_KEY_SIZE ;
 struct stm32_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int stm32_hash_setkey(struct crypto_ahash *tfm,
        const u8 *key, unsigned int keylen)
{
 struct stm32_hash_ctx *ctx = crypto_ahash_ctx(tfm);

 if (keylen <= HASH_MAX_KEY_SIZE) {
  memcpy(ctx->key, key, keylen);
  ctx->keylen = keylen;
 } else {
  return -ENOMEM;
 }

 return 0;
}
