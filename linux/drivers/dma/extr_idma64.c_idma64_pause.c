
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct idma64_chan {TYPE_1__ vchan; TYPE_2__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ status; } ;


 scalar_t__ DMA_IN_PROGRESS ;
 scalar_t__ DMA_PAUSED ;
 int idma64_chan_deactivate (struct idma64_chan*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idma64_chan* to_idma64_chan (struct dma_chan*) ;

__attribute__((used)) static int idma64_pause(struct dma_chan *chan)
{
 struct idma64_chan *idma64c = to_idma64_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&idma64c->vchan.lock, flags);
 if (idma64c->desc && idma64c->desc->status == DMA_IN_PROGRESS) {
  idma64_chan_deactivate(idma64c, 0);
  idma64c->desc->status = DMA_PAUSED;
 }
 spin_unlock_irqrestore(&idma64c->vchan.lock, flags);

 return 0;
}
