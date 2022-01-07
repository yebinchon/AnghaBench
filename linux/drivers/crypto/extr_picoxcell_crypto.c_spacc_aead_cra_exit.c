
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_aead_ctx {int sw_cipher; } ;
struct crypto_aead {int dummy; } ;


 struct spacc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;

__attribute__((used)) static void spacc_aead_cra_exit(struct crypto_aead *tfm)
{
 struct spacc_aead_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_aead(ctx->sw_cipher);
}
