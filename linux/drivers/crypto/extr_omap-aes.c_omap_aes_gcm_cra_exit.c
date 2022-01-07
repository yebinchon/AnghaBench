
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_ctx {scalar_t__ ctr; } ;
struct crypto_aead {int dummy; } ;


 struct omap_aes_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_tfm (struct crypto_aead*) ;
 int crypto_free_skcipher (scalar_t__) ;
 int omap_aes_cra_exit (int ) ;

__attribute__((used)) static void omap_aes_gcm_cra_exit(struct crypto_aead *tfm)
{
 struct omap_aes_ctx *ctx = crypto_aead_ctx(tfm);

 omap_aes_cra_exit(crypto_aead_tfm(tfm));

 if (ctx->ctr)
  crypto_free_skcipher(ctx->ctr);
}
