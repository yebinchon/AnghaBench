
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int ivsize; } ;
struct crypto_alg {int cra_name; TYPE_1__ cra_ablkcipher; int cra_blocksize; int cra_driver_name; } ;
struct ccp_crypto_ablkcipher_alg {int entry; struct crypto_alg alg; int mode; } ;
struct ccp_aes_def {char* name; char* driver_name; int ivsize; int blocksize; struct crypto_alg* alg_defaults; int mode; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int crypto_register_alg (struct crypto_alg*) ;
 int kfree (struct ccp_crypto_ablkcipher_alg*) ;
 struct ccp_crypto_ablkcipher_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int ccp_register_aes_alg(struct list_head *head,
    const struct ccp_aes_def *def)
{
 struct ccp_crypto_ablkcipher_alg *ccp_alg;
 struct crypto_alg *alg;
 int ret;

 ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
 if (!ccp_alg)
  return -ENOMEM;

 INIT_LIST_HEAD(&ccp_alg->entry);

 ccp_alg->mode = def->mode;


 alg = &ccp_alg->alg;
 *alg = *def->alg_defaults;
 snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->driver_name);
 alg->cra_blocksize = def->blocksize;
 alg->cra_ablkcipher.ivsize = def->ivsize;

 ret = crypto_register_alg(alg);
 if (ret) {
  pr_err("%s ablkcipher algorithm registration error (%d)\n",
         alg->cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 return 0;
}
