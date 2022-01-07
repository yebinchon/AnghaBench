
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_des_ctx {unsigned int keylen; int key; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct omap_des_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int pr_debug (char*,unsigned int) ;
 int verify_ablkcipher_des_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int omap_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
      unsigned int keylen)
{
 struct omap_des_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 int err;

 pr_debug("enter, keylen: %d\n", keylen);

 err = verify_ablkcipher_des_key(cipher, key);
 if (err)
  return err;

 memcpy(ctx->key, key, keylen);
 ctx->keylen = keylen;

 return 0;
}
