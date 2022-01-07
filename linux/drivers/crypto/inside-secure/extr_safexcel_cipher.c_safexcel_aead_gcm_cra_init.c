
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int hkaes; int mode; int xcm; int state_sz; int hash_alg; } ;
struct crypto_tfm {int dummy; } ;


 int CONTEXT_CONTROL_CRYPTO_ALG_GHASH ;
 int CONTEXT_CONTROL_CRYPTO_MODE_XCM ;
 int EIP197_XCM_MODE_GCM ;
 int GHASH_BLOCK_SIZE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_cipher (char*,int ,int ) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_aead_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int safexcel_aead_gcm_cra_init(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 safexcel_aead_cra_init(tfm);
 ctx->hash_alg = CONTEXT_CONTROL_CRYPTO_ALG_GHASH;
 ctx->state_sz = GHASH_BLOCK_SIZE;
 ctx->xcm = EIP197_XCM_MODE_GCM;
 ctx->mode = CONTEXT_CONTROL_CRYPTO_MODE_XCM;

 ctx->hkaes = crypto_alloc_cipher("aes", 0, 0);
 if (IS_ERR(ctx->hkaes))
  return PTR_ERR(ctx->hkaes);

 return 0;
}
