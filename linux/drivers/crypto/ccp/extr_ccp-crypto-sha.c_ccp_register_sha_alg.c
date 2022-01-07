
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct crypto_alg {int cra_flags; int cra_ctxsize; int cra_name; int cra_module; int cra_exit; int cra_init; int cra_priority; int cra_blocksize; int cra_driver_name; } ;
struct hash_alg_common {int statesize; struct crypto_alg base; int digestsize; } ;
struct ccp_sha_exp_ctx {int dummy; } ;
struct ccp_sha_def {char* name; char* drv_name; int block_size; int digest_size; int type; } ;
struct ccp_ctx {int dummy; } ;
struct ahash_alg {struct hash_alg_common halg; int import; int export; int digest; int finup; int final; int update; int init; } ;
struct ccp_crypto_ahash_alg {int entry; struct ahash_alg alg; int type; } ;


 int CCP_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int ccp_register_hmac_alg (struct list_head*,struct ccp_sha_def const*,struct ccp_crypto_ahash_alg*) ;
 int ccp_sha_cra_exit ;
 int ccp_sha_cra_init ;
 int ccp_sha_digest ;
 int ccp_sha_export ;
 int ccp_sha_final ;
 int ccp_sha_finup ;
 int ccp_sha_import ;
 int ccp_sha_init ;
 int ccp_sha_update ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int kfree (struct ccp_crypto_ahash_alg*) ;
 struct ccp_crypto_ahash_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int ccp_register_sha_alg(struct list_head *head,
    const struct ccp_sha_def *def)
{
 struct ccp_crypto_ahash_alg *ccp_alg;
 struct ahash_alg *alg;
 struct hash_alg_common *halg;
 struct crypto_alg *base;
 int ret;

 ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
 if (!ccp_alg)
  return -ENOMEM;

 INIT_LIST_HEAD(&ccp_alg->entry);

 ccp_alg->type = def->type;

 alg = &ccp_alg->alg;
 alg->init = ccp_sha_init;
 alg->update = ccp_sha_update;
 alg->final = ccp_sha_final;
 alg->finup = ccp_sha_finup;
 alg->digest = ccp_sha_digest;
 alg->export = ccp_sha_export;
 alg->import = ccp_sha_import;

 halg = &alg->halg;
 halg->digestsize = def->digest_size;
 halg->statesize = sizeof(struct ccp_sha_exp_ctx);

 base = &halg->base;
 snprintf(base->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->drv_name);
 base->cra_flags = CRYPTO_ALG_ASYNC |
     CRYPTO_ALG_KERN_DRIVER_ONLY |
     CRYPTO_ALG_NEED_FALLBACK;
 base->cra_blocksize = def->block_size;
 base->cra_ctxsize = sizeof(struct ccp_ctx);
 base->cra_priority = CCP_CRA_PRIORITY;
 base->cra_init = ccp_sha_cra_init;
 base->cra_exit = ccp_sha_cra_exit;
 base->cra_module = THIS_MODULE;

 ret = crypto_register_ahash(alg);
 if (ret) {
  pr_err("%s ahash algorithm registration error (%d)\n",
         base->cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 ret = ccp_register_hmac_alg(head, def, ccp_alg);

 return ret;
}
