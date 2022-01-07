
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hwrng {int dummy; } ;
struct buf_data {int filled; int empty; } ;
struct TYPE_3__ {struct buf_data* bufs; } ;


 scalar_t__ BUF_PENDING ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* rng_ctx ;
 int rng_unmap_ctx (TYPE_1__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void caam_cleanup(struct hwrng *rng)
{
 int i;
 struct buf_data *bd;

 for (i = 0; i < 2; i++) {
  bd = &rng_ctx->bufs[i];
  if (atomic_read(&bd->empty) == BUF_PENDING)
   wait_for_completion(&bd->filled);
 }

 rng_unmap_ctx(rng_ctx);
}
