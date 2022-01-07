
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct crypto_alg {int cra_flags; int cra_ctxsize; int cra_name; int cra_module; int cra_init; int cra_priority; void* cra_blocksize; int cra_driver_name; } ;
struct hash_alg_common {int statesize; struct crypto_alg base; void* digestsize; } ;
struct ccp_ctx {int dummy; } ;
struct ahash_alg {struct hash_alg_common halg; int setkey; int import; int export; int digest; int finup; int final; int update; int init; } ;
struct ccp_crypto_ahash_alg {int entry; struct ahash_alg alg; int mode; } ;
struct ccp_aes_cmac_exp_ctx {int dummy; } ;


 void* AES_BLOCK_SIZE ;
 int CCP_AES_MODE_CMAC ;
 int CCP_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int ccp_aes_cmac_cra_init ;
 int ccp_aes_cmac_digest ;
 int ccp_aes_cmac_export ;
 int ccp_aes_cmac_final ;
 int ccp_aes_cmac_finup ;
 int ccp_aes_cmac_import ;
 int ccp_aes_cmac_init ;
 int ccp_aes_cmac_setkey ;
 int ccp_aes_cmac_update ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int kfree (struct ccp_crypto_ahash_alg*) ;
 struct ccp_crypto_ahash_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*) ;

int ccp_register_aes_cmac_algs(struct list_head *head)
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
 ccp_alg->mode = CCP_AES_MODE_CMAC;

 alg = &ccp_alg->alg;
 alg->init = ccp_aes_cmac_init;
 alg->update = ccp_aes_cmac_update;
 alg->final = ccp_aes_cmac_final;
 alg->finup = ccp_aes_cmac_finup;
 alg->digest = ccp_aes_cmac_digest;
 alg->export = ccp_aes_cmac_export;
 alg->import = ccp_aes_cmac_import;
 alg->setkey = ccp_aes_cmac_setkey;

 halg = &alg->halg;
 halg->digestsize = AES_BLOCK_SIZE;
 halg->statesize = sizeof(struct ccp_aes_cmac_exp_ctx);

 base = &halg->base;
 snprintf(base->cra_name, CRYPTO_MAX_ALG_NAME, "cmac(aes)");
 snprintf(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "cmac-aes-ccp");
 base->cra_flags = CRYPTO_ALG_ASYNC |
     CRYPTO_ALG_KERN_DRIVER_ONLY |
     CRYPTO_ALG_NEED_FALLBACK;
 base->cra_blocksize = AES_BLOCK_SIZE;
 base->cra_ctxsize = sizeof(struct ccp_ctx);
 base->cra_priority = CCP_CRA_PRIORITY;
 base->cra_init = ccp_aes_cmac_cra_init;
 base->cra_module = THIS_MODULE;

 ret = crypto_register_ahash(alg);
 if (ret) {
  pr_err("%s ahash algorithm registration error (%d)\n",
         base->cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 return 0;
}
