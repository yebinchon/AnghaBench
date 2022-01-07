
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_ctxsize; int cra_flags; int cra_priority; int cra_module; } ;
struct skcipher_alg {int exit; int init; TYPE_1__ base; } ;
struct caam_skcipher_alg {struct skcipher_alg skcipher; } ;
struct caam_ctx {int dummy; } ;


 int CAAM_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int THIS_MODULE ;
 int caam_cra_exit ;
 int caam_cra_init_skcipher ;

__attribute__((used)) static void caam_skcipher_alg_init(struct caam_skcipher_alg *t_alg)
{
 struct skcipher_alg *alg = &t_alg->skcipher;

 alg->base.cra_module = THIS_MODULE;
 alg->base.cra_priority = CAAM_CRA_PRIORITY;
 alg->base.cra_ctxsize = sizeof(struct caam_ctx);
 alg->base.cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;

 alg->init = caam_cra_init_skcipher;
 alg->exit = caam_cra_exit;
}
