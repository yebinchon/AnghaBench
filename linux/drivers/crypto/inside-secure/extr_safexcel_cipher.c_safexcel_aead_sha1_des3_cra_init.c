
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int alg; } ;
struct crypto_tfm {int dummy; } ;


 int SAFEXCEL_3DES ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_aead_sha1_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int safexcel_aead_sha1_des3_cra_init(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 safexcel_aead_sha1_cra_init(tfm);
 ctx->alg = SAFEXCEL_3DES;
 return 0;
}
