
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int cra_ctxsize; int cra_flags; scalar_t__ cra_alignmask; int cra_blocksize; int cra_priority; int cra_exit; int cra_init; int cra_module; int cra_driver_name; int cra_name; } ;
struct TYPE_2__ {struct crypto_alg base; } ;
struct ahash_alg {int * setkey; TYPE_1__ halg; } ;
struct caam_hash_template {char* hmac_name; char* hmac_driver_name; char* name; char* driver_name; int alg_type; int blocksize; struct ahash_alg template_ahash; } ;
struct caam_hash_ctx {int dummy; } ;
struct caam_hash_alg {int alg_type; struct ahash_alg ahash_alg; } ;


 int CAAM_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 struct caam_hash_alg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int caam_hash_cra_exit ;
 int caam_hash_cra_init ;
 struct caam_hash_alg* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static struct caam_hash_alg *
caam_hash_alloc(struct caam_hash_template *template,
  bool keyed)
{
 struct caam_hash_alg *t_alg;
 struct ahash_alg *halg;
 struct crypto_alg *alg;

 t_alg = kzalloc(sizeof(*t_alg), GFP_KERNEL);
 if (!t_alg) {
  pr_err("failed to allocate t_alg\n");
  return ERR_PTR(-ENOMEM);
 }

 t_alg->ahash_alg = template->template_ahash;
 halg = &t_alg->ahash_alg;
 alg = &halg->halg.base;

 if (keyed) {
  snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->hmac_name);
  snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->hmac_driver_name);
 } else {
  snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->name);
  snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->driver_name);
  t_alg->ahash_alg.setkey = ((void*)0);
 }
 alg->cra_module = THIS_MODULE;
 alg->cra_init = caam_hash_cra_init;
 alg->cra_exit = caam_hash_cra_exit;
 alg->cra_ctxsize = sizeof(struct caam_hash_ctx);
 alg->cra_priority = CAAM_CRA_PRIORITY;
 alg->cra_blocksize = template->blocksize;
 alg->cra_alignmask = 0;
 alg->cra_flags = CRYPTO_ALG_ASYNC;

 t_alg->alg_type = template->alg_type;

 return t_alg;
}
