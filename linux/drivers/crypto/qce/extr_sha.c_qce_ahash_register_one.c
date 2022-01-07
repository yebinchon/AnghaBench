
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qce_sha_ctx {int dummy; } ;
struct qce_device {int dev; } ;
struct crypto_alg {int cra_priority; int cra_ctxsize; int cra_name; int cra_driver_name; int cra_init; int cra_module; scalar_t__ cra_alignmask; int cra_flags; int cra_blocksize; } ;
struct TYPE_4__ {struct crypto_alg base; int statesize; int digestsize; } ;
struct ahash_alg {TYPE_2__ halg; int setkey; int import; int export; int digest; int final; int update; int init; } ;
struct TYPE_3__ {struct ahash_alg ahash; } ;
struct qce_alg_template {int entry; struct qce_device* qce; int alg_flags; int crypto_alg_type; TYPE_1__ alg; int std_iv; } ;
struct qce_ahash_def {char* name; char* drv_name; int flags; int blocksize; int statesize; int digestsize; int std_iv; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_TYPE_AHASH ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_SHA_HMAC (int ) ;
 int THIS_MODULE ;
 int ahash_algs ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 int kfree (struct qce_alg_template*) ;
 struct qce_alg_template* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int qce_ahash_cra_init ;
 int qce_ahash_digest ;
 int qce_ahash_export ;
 int qce_ahash_final ;
 int qce_ahash_hmac_setkey ;
 int qce_ahash_import ;
 int qce_ahash_init ;
 int qce_ahash_update ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int qce_ahash_register_one(const struct qce_ahash_def *def,
      struct qce_device *qce)
{
 struct qce_alg_template *tmpl;
 struct ahash_alg *alg;
 struct crypto_alg *base;
 int ret;

 tmpl = kzalloc(sizeof(*tmpl), GFP_KERNEL);
 if (!tmpl)
  return -ENOMEM;

 tmpl->std_iv = def->std_iv;

 alg = &tmpl->alg.ahash;
 alg->init = qce_ahash_init;
 alg->update = qce_ahash_update;
 alg->final = qce_ahash_final;
 alg->digest = qce_ahash_digest;
 alg->export = qce_ahash_export;
 alg->import = qce_ahash_import;
 if (IS_SHA_HMAC(def->flags))
  alg->setkey = qce_ahash_hmac_setkey;
 alg->halg.digestsize = def->digestsize;
 alg->halg.statesize = def->statesize;

 base = &alg->halg.base;
 base->cra_blocksize = def->blocksize;
 base->cra_priority = 300;
 base->cra_flags = CRYPTO_ALG_ASYNC;
 base->cra_ctxsize = sizeof(struct qce_sha_ctx);
 base->cra_alignmask = 0;
 base->cra_module = THIS_MODULE;
 base->cra_init = qce_ahash_cra_init;

 snprintf(base->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->drv_name);

 INIT_LIST_HEAD(&tmpl->entry);
 tmpl->crypto_alg_type = CRYPTO_ALG_TYPE_AHASH;
 tmpl->alg_flags = def->flags;
 tmpl->qce = qce;

 ret = crypto_register_ahash(alg);
 if (ret) {
  kfree(tmpl);
  dev_err(qce->dev, "%s registration failed\n", base->cra_name);
  return ret;
 }

 list_add_tail(&tmpl->entry, &ahash_algs);
 dev_dbg(qce->dev, "%s is registered\n", base->cra_name);
 return 0;
}
