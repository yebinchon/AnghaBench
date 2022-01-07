
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dmadev {int irq_lock; } ;
struct omap_chan {int paused; TYPE_1__* desc; } ;
struct dma_chan {int device; } ;
struct TYPE_2__ {int clnk_ctrl; } ;


 int CLNK_CTRL ;
 int EINVAL ;
 int mb () ;
 int omap_dma_chan_write (struct omap_chan*,int ,int ) ;
 int omap_dma_start (struct omap_chan*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static int omap_dma_resume(struct dma_chan *chan)
{
 struct omap_chan *c = to_omap_dma_chan(chan);
 struct omap_dmadev *od = to_omap_dma_dev(chan->device);
 unsigned long flags;
 int ret = -EINVAL;

 spin_lock_irqsave(&od->irq_lock, flags);

 if (c->paused && c->desc) {
  mb();


  omap_dma_chan_write(c, CLNK_CTRL, c->desc->clnk_ctrl);

  omap_dma_start(c, c->desc);
  c->paused = 0;
  ret = 0;
 }
 spin_unlock_irqrestore(&od->irq_lock, flags);

 return ret;
}
