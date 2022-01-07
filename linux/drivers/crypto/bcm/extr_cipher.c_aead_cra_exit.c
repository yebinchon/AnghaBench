
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_ctx_s {int * fallback_cipher; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;


 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 int crypto_free_aead (int *) ;
 struct iproc_ctx_s* crypto_tfm_ctx (struct crypto_tfm*) ;
 int generic_cra_exit (struct crypto_tfm*) ;

__attribute__((used)) static void aead_cra_exit(struct crypto_aead *aead)
{
 struct crypto_tfm *tfm = crypto_aead_tfm(aead);
 struct iproc_ctx_s *ctx = crypto_tfm_ctx(tfm);

 generic_cra_exit(tfm);

 if (ctx->fallback_cipher) {
  crypto_free_aead(ctx->fallback_cipher);
  ctx->fallback_cipher = ((void*)0);
 }
}
