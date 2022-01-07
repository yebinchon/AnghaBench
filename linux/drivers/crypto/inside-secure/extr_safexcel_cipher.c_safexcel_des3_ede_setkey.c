
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {unsigned int key_len; int key; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;


 struct safexcel_cipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ memcmp (int ,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;
 int verify_skcipher_des3_key (struct crypto_skcipher*,int const*) ;

__attribute__((used)) static int safexcel_des3_ede_setkey(struct crypto_skcipher *ctfm,
       const u8 *key, unsigned int len)
{
 struct safexcel_cipher_ctx *ctx = crypto_skcipher_ctx(ctfm);
 int err;

 err = verify_skcipher_des3_key(ctfm, key);
 if (err)
  return err;


 if (ctx->base.ctxr_dma) {
  if (memcmp(ctx->key, key, len))
   ctx->base.needs_inv = 1;
 }

 memcpy(ctx->key, key, len);

 ctx->key_len = len;

 return 0;
}
