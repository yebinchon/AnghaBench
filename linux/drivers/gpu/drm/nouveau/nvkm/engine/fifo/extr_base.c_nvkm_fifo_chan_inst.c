
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_fifo {int lock; } ;


 struct nvkm_fifo_chan* nvkm_fifo_chan_inst_locked (struct nvkm_fifo*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct nvkm_fifo_chan *
nvkm_fifo_chan_inst(struct nvkm_fifo *fifo, u64 inst, unsigned long *rflags)
{
 struct nvkm_fifo_chan *chan;
 unsigned long flags;
 spin_lock_irqsave(&fifo->lock, flags);
 if ((chan = nvkm_fifo_chan_inst_locked(fifo, inst))) {
  *rflags = flags;
  return chan;
 }
 spin_unlock_irqrestore(&fifo->lock, flags);
 return ((void*)0);
}
