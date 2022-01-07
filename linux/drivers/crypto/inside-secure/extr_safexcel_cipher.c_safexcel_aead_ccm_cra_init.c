
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int state_sz; int mode; int xcm; int hash_alg; } ;
struct crypto_tfm {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int CONTEXT_CONTROL_CRYPTO_ALG_XCBC128 ;
 int CONTEXT_CONTROL_CRYPTO_MODE_XCM ;
 int EIP197_XCM_MODE_CCM ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_aead_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int safexcel_aead_ccm_cra_init(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 safexcel_aead_cra_init(tfm);
 ctx->hash_alg = CONTEXT_CONTROL_CRYPTO_ALG_XCBC128;
 ctx->state_sz = 3 * AES_BLOCK_SIZE;
 ctx->xcm = EIP197_XCM_MODE_CCM;
 ctx->mode = CONTEXT_CONTROL_CRYPTO_MODE_XCM;
 return 0;
}
