
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct crypto_alg {int cra_name; int cra_exit; int cra_init; int cra_driver_name; } ;
struct hash_alg_common {struct crypto_alg base; } ;
struct ccp_sha_def {char* name; char* drv_name; } ;
struct ahash_alg {struct hash_alg_common halg; int setkey; } ;
struct ccp_crypto_ahash_alg {int entry; struct ahash_alg alg; int child_alg; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ccp_hmac_sha_cra_exit ;
 int ccp_hmac_sha_cra_init ;
 int ccp_sha_setkey ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int kfree (struct ccp_crypto_ahash_alg*) ;
 struct ccp_crypto_ahash_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static int ccp_register_hmac_alg(struct list_head *head,
     const struct ccp_sha_def *def,
     const struct ccp_crypto_ahash_alg *base_alg)
{
 struct ccp_crypto_ahash_alg *ccp_alg;
 struct ahash_alg *alg;
 struct hash_alg_common *halg;
 struct crypto_alg *base;
 int ret;

 ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
 if (!ccp_alg)
  return -ENOMEM;


 *ccp_alg = *base_alg;
 INIT_LIST_HEAD(&ccp_alg->entry);

 strncpy(ccp_alg->child_alg, def->name, CRYPTO_MAX_ALG_NAME);

 alg = &ccp_alg->alg;
 alg->setkey = ccp_sha_setkey;

 halg = &alg->halg;

 base = &halg->base;
 snprintf(base->cra_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)", def->name);
 snprintf(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "hmac-%s",
   def->drv_name);
 base->cra_init = ccp_hmac_sha_cra_init;
 base->cra_exit = ccp_hmac_sha_cra_exit;

 ret = crypto_register_ahash(alg);
 if (ret) {
  pr_err("%s ahash algorithm registration error (%d)\n",
         base->cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 return ret;
}
