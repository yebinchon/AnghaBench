
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int mode; int alg; } ;
struct crypto_tfm {int dummy; } ;


 int CONTEXT_CONTROL_CRYPTO_MODE_CFB ;
 int SAFEXCEL_AES ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_skcipher_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int safexcel_skcipher_aes_cfb_cra_init(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 safexcel_skcipher_cra_init(tfm);
 ctx->alg = SAFEXCEL_AES;
 ctx->mode = CONTEXT_CONTROL_CRYPTO_MODE_CFB;
 return 0;
}
