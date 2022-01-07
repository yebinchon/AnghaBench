
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_3__ {struct crypto_shash* hmac_tfm; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ahash_alg {int child_alg; } ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct ccp_crypto_ahash_alg* ccp_crypto_ahash_alg (struct crypto_tfm*) ;
 int ccp_sha_cra_init (struct crypto_tfm*) ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 struct ccp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int ccp_hmac_sha_cra_init(struct crypto_tfm *tfm)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
 struct ccp_crypto_ahash_alg *alg = ccp_crypto_ahash_alg(tfm);
 struct crypto_shash *hmac_tfm;

 hmac_tfm = crypto_alloc_shash(alg->child_alg, 0, 0);
 if (IS_ERR(hmac_tfm)) {
  pr_warn("could not load driver %s need for HMAC support\n",
   alg->child_alg);
  return PTR_ERR(hmac_tfm);
 }

 ctx->u.sha.hmac_tfm = hmac_tfm;

 return ccp_sha_cra_init(tfm);
}
