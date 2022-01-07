
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int hkaes; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_cipher (int ) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_aead_cra_exit (struct crypto_tfm*) ;

__attribute__((used)) static void safexcel_aead_gcm_cra_exit(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_cipher(ctx->hkaes);
 safexcel_aead_cra_exit(tfm);
}
