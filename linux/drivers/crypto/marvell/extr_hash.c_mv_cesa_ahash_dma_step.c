
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* first; } ;
struct mv_cesa_req {struct mv_cesa_engine* engine; TYPE_2__ chain; } ;
struct mv_cesa_engine {scalar_t__ regs; } ;
struct mv_cesa_ahash_req {int * state; struct mv_cesa_req base; } ;
struct ahash_request {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ CESA_IVDIG (int) ;
 int CESA_TDMA_SET_STATE ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_dma_step (struct mv_cesa_req*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mv_cesa_ahash_dma_step(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_req *base = &creq->base;


 if (base->chain.first->flags & CESA_TDMA_SET_STATE) {
  struct mv_cesa_engine *engine = base->engine;
  int i;


  for (i = 0; i < ARRAY_SIZE(creq->state); i++)
   writel_relaxed(creq->state[i], engine->regs +
           CESA_IVDIG(i));
 }

 mv_cesa_dma_step(base);
}
