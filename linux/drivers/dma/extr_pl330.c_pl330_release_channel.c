
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl330_thread {int free; int lstenq; int ev; TYPE_1__* req; } ;
struct TYPE_2__ {int desc; } ;


 int PL330_ERR_ABORT ;
 int _free_event (struct pl330_thread*,int ) ;
 int _stop (struct pl330_thread*) ;
 int dma_pl330_rqcb (int ,int ) ;

__attribute__((used)) static void pl330_release_channel(struct pl330_thread *thrd)
{
 if (!thrd || thrd->free)
  return;

 _stop(thrd);

 dma_pl330_rqcb(thrd->req[1 - thrd->lstenq].desc, PL330_ERR_ABORT);
 dma_pl330_rqcb(thrd->req[thrd->lstenq].desc, PL330_ERR_ABORT);

 _free_event(thrd, thrd->ev);
 thrd->free = 1;
}
