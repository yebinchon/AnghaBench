
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jrdev; } ;


 int caam_jr_free (int ) ;
 int caam_rng ;
 int hwrng_unregister (int *) ;
 int init_done ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* rng_ctx ;

void caam_rng_exit(void)
{
 if (!init_done)
  return;

 caam_jr_free(rng_ctx->jrdev);
 hwrng_unregister(&caam_rng);
 kfree(rng_ctx);
}
