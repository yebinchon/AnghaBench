
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hifn_device {int flags; } ;
struct hifn_context {unsigned int keysize; int key; struct hifn_device* dev; } ;
struct crypto_ablkcipher {int dummy; } ;


 int HIFN_FLAG_OLD_KEY ;
 struct hifn_context* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int verify_ablkcipher_des3_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int hifn_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
       unsigned int len)
{
 struct hifn_context *ctx = crypto_ablkcipher_ctx(cipher);
 struct hifn_device *dev = ctx->dev;
 int err;

 err = verify_ablkcipher_des3_key(cipher, key);
 if (err)
  return err;

 dev->flags &= ~HIFN_FLAG_OLD_KEY;

 memcpy(ctx->key, key, len);
 ctx->keysize = len;

 return 0;
}
