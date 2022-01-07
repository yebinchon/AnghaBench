
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int aead; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;


 int crypto4xx_common_exit (struct crypto4xx_ctx*) ;
 struct crypto4xx_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;

__attribute__((used)) static void crypto4xx_aead_exit(struct crypto_aead *tfm)
{
 struct crypto4xx_ctx *ctx = crypto_aead_ctx(tfm);

 crypto4xx_common_exit(ctx);
 crypto_free_aead(ctx->sw_cipher.aead);
}
