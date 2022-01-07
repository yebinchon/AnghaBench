
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv_cesa_tdma_desc {int flags; int next_dma; TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_2__* first; struct mv_cesa_tdma_desc* last; } ;
struct mv_cesa_req {TYPE_3__ chain; } ;
struct TYPE_4__ {struct mv_cesa_tdma_desc* last; TYPE_2__* first; } ;
struct mv_cesa_engine {TYPE_1__ chain; } ;
struct TYPE_5__ {int flags; int cur_dma; } ;


 int CESA_TDMA_BREAK_CHAIN ;
 int CESA_TDMA_SET_STATE ;

void mv_cesa_tdma_chain(struct mv_cesa_engine *engine,
   struct mv_cesa_req *dreq)
{
 if (engine->chain.first == ((void*)0) && engine->chain.last == ((void*)0)) {
  engine->chain.first = dreq->chain.first;
  engine->chain.last = dreq->chain.last;
 } else {
  struct mv_cesa_tdma_desc *last;

  last = engine->chain.last;
  last->next = dreq->chain.first;
  engine->chain.last = dreq->chain.last;







  if (!(last->flags & CESA_TDMA_BREAK_CHAIN) &&
      !(dreq->chain.first->flags & CESA_TDMA_SET_STATE))
   last->next_dma = dreq->chain.first->cur_dma;
 }
}
