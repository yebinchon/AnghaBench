
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_crypto_request {int dummy; } ;
struct qat_alg_aead_ctx {int qat_hash_alg; int hash_tfm; } ;
struct crypto_aead {int dummy; } ;
typedef enum icp_qat_hw_auth_algo { ____Placeholder_icp_qat_hw_auth_algo } icp_qat_hw_auth_algo ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct qat_alg_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;
 int crypto_alloc_shash (char const*,int ,int ) ;

__attribute__((used)) static int qat_alg_aead_init(struct crypto_aead *tfm,
        enum icp_qat_hw_auth_algo hash,
        const char *hash_name)
{
 struct qat_alg_aead_ctx *ctx = crypto_aead_ctx(tfm);

 ctx->hash_tfm = crypto_alloc_shash(hash_name, 0, 0);
 if (IS_ERR(ctx->hash_tfm))
  return PTR_ERR(ctx->hash_tfm);
 ctx->qat_hash_alg = hash;
 crypto_aead_set_reqsize(tfm, sizeof(struct qat_crypto_request));
 return 0;
}
