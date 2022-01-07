
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pl330_thread {int free; scalar_t__ ev; int lstenq; int req_running; TYPE_2__* req; } ;
struct TYPE_3__ {int num_chan; } ;
struct pl330_dmac {scalar_t__ state; struct pl330_thread* channels; TYPE_1__ pcfg; } ;
struct TYPE_4__ {int * desc; } ;


 scalar_t__ DYING ;
 scalar_t__ _alloc_event (struct pl330_thread*) ;
 scalar_t__ _chan_ns (struct pl330_dmac*,int) ;
 int _manager_ns (struct pl330_thread*) ;

__attribute__((used)) static struct pl330_thread *pl330_request_channel(struct pl330_dmac *pl330)
{
 struct pl330_thread *thrd = ((void*)0);
 int chans, i;

 if (pl330->state == DYING)
  return ((void*)0);

 chans = pl330->pcfg.num_chan;

 for (i = 0; i < chans; i++) {
  thrd = &pl330->channels[i];
  if ((thrd->free) && (!_manager_ns(thrd) ||
     _chan_ns(pl330, i))) {
   thrd->ev = _alloc_event(thrd);
   if (thrd->ev >= 0) {
    thrd->free = 0;
    thrd->lstenq = 1;
    thrd->req[0].desc = ((void*)0);
    thrd->req[1].desc = ((void*)0);
    thrd->req_running = -1;
    break;
   }
  }
  thrd = ((void*)0);
 }

 return thrd;
}
