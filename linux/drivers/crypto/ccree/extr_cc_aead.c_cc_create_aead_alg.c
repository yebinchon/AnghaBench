
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int cra_ctxsize; int cra_flags; int cra_priority; int cra_module; int cra_driver_name; int cra_name; } ;
struct aead_alg {int exit; int init; TYPE_1__ base; } ;
struct cc_crypto_alg {int auth_mode; int flow_mode; int cipher_mode; struct aead_alg aead_alg; } ;
struct cc_alg_template {char* name; char* driver_name; int auth_mode; int flow_mode; int cipher_mode; struct aead_alg template_aead; } ;
struct cc_aead_ctx {int dummy; } ;


 int CC_CRA_PRIO ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 struct cc_crypto_alg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int cc_aead_exit ;
 int cc_aead_init ;
 struct cc_crypto_alg* kzalloc (int,int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static struct cc_crypto_alg *cc_create_aead_alg(struct cc_alg_template *tmpl,
      struct device *dev)
{
 struct cc_crypto_alg *t_alg;
 struct aead_alg *alg;

 t_alg = kzalloc(sizeof(*t_alg), GFP_KERNEL);
 if (!t_alg)
  return ERR_PTR(-ENOMEM);

 alg = &tmpl->template_aead;

 snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", tmpl->name);
 snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   tmpl->driver_name);
 alg->base.cra_module = THIS_MODULE;
 alg->base.cra_priority = CC_CRA_PRIO;

 alg->base.cra_ctxsize = sizeof(struct cc_aead_ctx);
 alg->base.cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
 alg->init = cc_aead_init;
 alg->exit = cc_aead_exit;

 t_alg->aead_alg = *alg;

 t_alg->cipher_mode = tmpl->cipher_mode;
 t_alg->flow_mode = tmpl->flow_mode;
 t_alg->auth_mode = tmpl->auth_mode;

 return t_alg;
}
