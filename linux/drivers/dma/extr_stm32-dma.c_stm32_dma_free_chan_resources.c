
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct stm32_dma_device {TYPE_1__ ddev; } ;
struct TYPE_4__ {int lock; } ;
struct stm32_dma_chan {TYPE_2__ vchan; int * desc; scalar_t__ busy; int id; } ;
struct dma_chan {int dummy; } ;


 int chan2dev (struct stm32_dma_chan*) ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_stop (struct stm32_dma_chan*) ;
 struct stm32_dma_chan* to_stm32_dma_chan (struct dma_chan*) ;
 int to_virt_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (int ) ;

__attribute__((used)) static void stm32_dma_free_chan_resources(struct dma_chan *c)
{
 struct stm32_dma_chan *chan = to_stm32_dma_chan(c);
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 unsigned long flags;

 dev_dbg(chan2dev(chan), "Freeing channel %d\n", chan->id);

 if (chan->busy) {
  spin_lock_irqsave(&chan->vchan.lock, flags);
  stm32_dma_stop(chan);
  chan->desc = ((void*)0);
  spin_unlock_irqrestore(&chan->vchan.lock, flags);
 }

 pm_runtime_put(dmadev->ddev.dev);

 vchan_free_chan_resources(to_virt_chan(c));
}
