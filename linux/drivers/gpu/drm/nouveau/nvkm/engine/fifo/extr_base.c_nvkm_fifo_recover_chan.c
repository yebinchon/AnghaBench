
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int lock; TYPE_1__* func; } ;
struct TYPE_2__ {int (* recover_chan ) (struct nvkm_fifo*,int) ;} ;


 scalar_t__ WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nvkm_fifo*,int) ;

void
nvkm_fifo_recover_chan(struct nvkm_fifo *fifo, int chid)
{
 unsigned long flags;
 if (WARN_ON(!fifo->func->recover_chan))
  return;
 spin_lock_irqsave(&fifo->lock, flags);
 fifo->func->recover_chan(fifo, chid);
 spin_unlock_irqrestore(&fifo->lock, flags);
}
