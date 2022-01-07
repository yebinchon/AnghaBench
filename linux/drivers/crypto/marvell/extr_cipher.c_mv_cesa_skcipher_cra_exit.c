
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {int cra_ctxsize; } ;


 void* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memzero_explicit (void*,int ) ;

__attribute__((used)) static void mv_cesa_skcipher_cra_exit(struct crypto_tfm *tfm)
{
 void *ctx = crypto_tfm_ctx(tfm);

 memzero_explicit(ctx, tfm->__crt_alg->cra_ctxsize);
}
