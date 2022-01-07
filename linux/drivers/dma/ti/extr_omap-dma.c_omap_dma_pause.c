
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dmadev {int irq_lock; } ;
struct omap_chan {int paused; TYPE_1__* desc; scalar_t__ cyclic; } ;
struct dma_chan {int device; } ;
struct TYPE_2__ {scalar_t__ dir; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 int EINVAL ;
 int omap_dma_stop (struct omap_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static int omap_dma_pause(struct dma_chan *chan)
{
 struct omap_chan *c = to_omap_dma_chan(chan);
 struct omap_dmadev *od = to_omap_dma_dev(chan->device);
 unsigned long flags;
 int ret = -EINVAL;
 bool can_pause = 0;

 spin_lock_irqsave(&od->irq_lock, flags);

 if (!c->desc)
  goto out;

 if (c->cyclic)
  can_pause = 1;
 else if (c->desc->dir == DMA_DEV_TO_MEM)
  can_pause = 1;

 if (can_pause && !c->paused) {
  ret = omap_dma_stop(c);
  if (!ret)
   c->paused = 1;
 }
out:
 spin_unlock_irqrestore(&od->irq_lock, flags);

 return ret;
}
