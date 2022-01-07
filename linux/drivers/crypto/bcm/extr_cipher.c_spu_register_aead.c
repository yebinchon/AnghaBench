
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iproc_ctx_s {int dummy; } ;
struct TYPE_4__ {int cra_ctxsize; int cra_driver_name; int cra_flags; scalar_t__ cra_alignmask; int cra_priority; int cra_module; } ;
struct aead_alg {TYPE_2__ base; int exit; int init; int decrypt; int encrypt; int setauthsize; } ;
struct TYPE_3__ {struct aead_alg aead; } ;
struct iproc_alg_s {int registered; TYPE_1__ alg; } ;


 int CRYPTO_ALG_ASYNC ;
 int THIS_MODULE ;
 int aead_cra_exit ;
 int aead_cra_init ;
 int aead_decrypt ;
 int aead_encrypt ;
 int aead_pri ;
 int aead_setauthsize ;
 int crypto_register_aead (struct aead_alg*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int spu_register_aead(struct iproc_alg_s *driver_alg)
{
 struct aead_alg *aead = &driver_alg->alg.aead;
 int err;

 aead->base.cra_module = THIS_MODULE;
 aead->base.cra_priority = aead_pri;
 aead->base.cra_alignmask = 0;
 aead->base.cra_ctxsize = sizeof(struct iproc_ctx_s);

 aead->base.cra_flags |= CRYPTO_ALG_ASYNC;

 aead->setauthsize = aead_setauthsize;
 aead->encrypt = aead_encrypt;
 aead->decrypt = aead_decrypt;
 aead->init = aead_cra_init;
 aead->exit = aead_cra_exit;

 err = crypto_register_aead(aead);

 if (err == 0)
  driver_alg->registered = 1;
 pr_debug("  registered aead %s\n", aead->base.cra_driver_name);
 return err;
}
