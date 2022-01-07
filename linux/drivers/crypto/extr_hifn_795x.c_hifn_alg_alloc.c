
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hifn_device {char* name; int alg_list; } ;
struct TYPE_3__ {int ablkcipher; } ;
struct TYPE_4__ {int cra_priority; int cra_flags; int cra_ctxsize; int cra_init; TYPE_1__ cra_u; int cra_module; int * cra_type; scalar_t__ cra_alignmask; int cra_blocksize; int cra_driver_name; int cra_name; } ;
struct hifn_crypto_alg {int entry; TYPE_2__ alg; struct hifn_device* dev; } ;
struct hifn_context {int dummy; } ;
struct hifn_alg_template {char* name; char* drv_name; int ablkcipher; int bsize; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_ALG_TYPE_ABLKCIPHER ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int crypto_ablkcipher_type ;
 int crypto_register_alg (TYPE_2__*) ;
 int hifn_cra_init ;
 int kfree (struct hifn_crypto_alg*) ;
 struct hifn_crypto_alg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int snprintf (int ,int ,char*,char*,...) ;

__attribute__((used)) static int hifn_alg_alloc(struct hifn_device *dev, struct hifn_alg_template *t)
{
 struct hifn_crypto_alg *alg;
 int err;

 alg = kzalloc(sizeof(*alg), GFP_KERNEL);
 if (!alg)
  return -ENOMEM;

 snprintf(alg->alg.cra_name, CRYPTO_MAX_ALG_NAME, "%s", t->name);
 snprintf(alg->alg.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-%s",
   t->drv_name, dev->name);

 alg->alg.cra_priority = 300;
 alg->alg.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
    CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
 alg->alg.cra_blocksize = t->bsize;
 alg->alg.cra_ctxsize = sizeof(struct hifn_context);
 alg->alg.cra_alignmask = 0;
 alg->alg.cra_type = &crypto_ablkcipher_type;
 alg->alg.cra_module = THIS_MODULE;
 alg->alg.cra_u.ablkcipher = t->ablkcipher;
 alg->alg.cra_init = hifn_cra_init;

 alg->dev = dev;

 list_add_tail(&alg->entry, &dev->alg_list);

 err = crypto_register_alg(&alg->alg);
 if (err) {
  list_del(&alg->entry);
  kfree(alg);
 }

 return err;
}
