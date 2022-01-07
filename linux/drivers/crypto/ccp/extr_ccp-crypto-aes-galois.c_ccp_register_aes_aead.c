
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_3__ {int ivsize; } ;
struct TYPE_4__ {int cra_name; TYPE_1__ cra_ablkcipher; int cra_blocksize; int cra_driver_name; } ;
struct aead_alg {TYPE_2__ base; } ;
struct ccp_crypto_aead {int entry; struct aead_alg alg; int mode; } ;
struct ccp_aes_aead_def {char* name; char* driver_name; int ivsize; int blocksize; struct aead_alg* alg_defaults; int mode; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int crypto_register_aead (struct aead_alg*) ;
 int kfree (struct ccp_crypto_aead*) ;
 struct ccp_crypto_aead* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int ccp_register_aes_aead(struct list_head *head,
     const struct ccp_aes_aead_def *def)
{
 struct ccp_crypto_aead *ccp_aead;
 struct aead_alg *alg;
 int ret;

 ccp_aead = kzalloc(sizeof(*ccp_aead), GFP_KERNEL);
 if (!ccp_aead)
  return -ENOMEM;

 INIT_LIST_HEAD(&ccp_aead->entry);

 ccp_aead->mode = def->mode;


 alg = &ccp_aead->alg;
 *alg = *def->alg_defaults;
 snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->driver_name);
 alg->base.cra_blocksize = def->blocksize;
 alg->base.cra_ablkcipher.ivsize = def->ivsize;

 ret = crypto_register_aead(alg);
 if (ret) {
  pr_err("%s ablkcipher algorithm registration error (%d)\n",
         alg->base.cra_name, ret);
  kfree(ccp_aead);
  return ret;
 }

 list_add(&ccp_aead->entry, head);

 return 0;
}
