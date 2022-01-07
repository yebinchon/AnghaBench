
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ cipher; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;


 int crypto4xx_common_exit (struct crypto4xx_ctx*) ;
 int crypto_free_sync_skcipher (scalar_t__) ;
 struct crypto4xx_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void crypto4xx_sk_exit(struct crypto_skcipher *sk)
{
 struct crypto4xx_ctx *ctx = crypto_skcipher_ctx(sk);

 crypto4xx_common_exit(ctx);
 if (ctx->sw_cipher.cipher)
  crypto_free_sync_skcipher(ctx->sw_cipher.cipher);
}
