
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spacc_ablk_ctx {unsigned int key_len; int key; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct spacc_ablk_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int verify_ablkcipher_des_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int spacc_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
       unsigned int len)
{
 struct spacc_ablk_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 int err;

 err = verify_ablkcipher_des_key(cipher, key);
 if (err)
  return err;

 memcpy(ctx->key, key, len);
 ctx->key_len = len;

 return 0;
}
