
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto_alg {int cra_ctxsize; int cra_flags; int cra_init; int cra_exit; scalar_t__ cra_alignmask; int cra_blocksize; int cra_priority; int cra_module; int cra_driver_name; int cra_name; } ;
struct TYPE_2__ {struct crypto_alg base; } ;
struct ahash_alg {int * setkey; TYPE_1__ halg; } ;
struct cc_hash_template {char* mac_name; char* mac_driver_name; char* name; char* driver_name; int inter_digestsize; int hw_mode; int hash_mode; int blocksize; struct ahash_alg template_ahash; } ;
struct cc_hash_ctx {int dummy; } ;
struct cc_hash_alg {int inter_digestsize; int hw_mode; int hash_mode; struct ahash_alg ahash_alg; } ;


 int CC_CRA_PRIO ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 struct cc_hash_alg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int cc_cra_exit ;
 int cc_cra_init ;
 struct cc_hash_alg* kzalloc (int,int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static struct cc_hash_alg *cc_alloc_hash_alg(struct cc_hash_template *template,
          struct device *dev, bool keyed)
{
 struct cc_hash_alg *t_crypto_alg;
 struct crypto_alg *alg;
 struct ahash_alg *halg;

 t_crypto_alg = kzalloc(sizeof(*t_crypto_alg), GFP_KERNEL);
 if (!t_crypto_alg)
  return ERR_PTR(-ENOMEM);

 t_crypto_alg->ahash_alg = template->template_ahash;
 halg = &t_crypto_alg->ahash_alg;
 alg = &halg->halg.base;

 if (keyed) {
  snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->mac_name);
  snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->mac_driver_name);
 } else {
  halg->setkey = ((void*)0);
  snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->name);
  snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
    template->driver_name);
 }
 alg->cra_module = THIS_MODULE;
 alg->cra_ctxsize = sizeof(struct cc_hash_ctx);
 alg->cra_priority = CC_CRA_PRIO;
 alg->cra_blocksize = template->blocksize;
 alg->cra_alignmask = 0;
 alg->cra_exit = cc_cra_exit;

 alg->cra_init = cc_cra_init;
 alg->cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;

 t_crypto_alg->hash_mode = template->hash_mode;
 t_crypto_alg->hw_mode = template->hw_mode;
 t_crypto_alg->inter_digestsize = template->inter_digestsize;

 return t_crypto_alg;
}
