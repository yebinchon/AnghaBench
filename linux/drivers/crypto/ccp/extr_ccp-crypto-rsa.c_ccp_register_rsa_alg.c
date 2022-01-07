
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct ccp_rsa_def {char* name; char* driver_name; struct akcipher_alg* alg_defaults; } ;
struct TYPE_2__ {int cra_name; int cra_driver_name; } ;
struct akcipher_alg {TYPE_1__ base; } ;
struct ccp_crypto_akcipher_alg {int entry; struct akcipher_alg alg; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int crypto_register_akcipher (struct akcipher_alg*) ;
 int kfree (struct ccp_crypto_akcipher_alg*) ;
 struct ccp_crypto_akcipher_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int ccp_register_rsa_alg(struct list_head *head,
           const struct ccp_rsa_def *def)
{
 struct ccp_crypto_akcipher_alg *ccp_alg;
 struct akcipher_alg *alg;
 int ret;

 ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
 if (!ccp_alg)
  return -ENOMEM;

 INIT_LIST_HEAD(&ccp_alg->entry);

 alg = &ccp_alg->alg;
 *alg = *def->alg_defaults;
 snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->driver_name);
 ret = crypto_register_akcipher(alg);
 if (ret) {
  pr_err("%s akcipher algorithm registration error (%d)\n",
         alg->base.cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 return 0;
}
