
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_fifo {int lock; } ;


 scalar_t__ likely (struct nvkm_fifo_chan*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nvkm_fifo_chan_put(struct nvkm_fifo *fifo, unsigned long flags,
     struct nvkm_fifo_chan **pchan)
{
 struct nvkm_fifo_chan *chan = *pchan;
 if (likely(chan)) {
  *pchan = ((void*)0);
  spin_unlock_irqrestore(&fifo->lock, flags);
 }
}
