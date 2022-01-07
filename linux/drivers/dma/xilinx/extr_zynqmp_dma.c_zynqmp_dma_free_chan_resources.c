
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int dev; int sw_desc_pool; int desc_pool_p; int desc_pool_v; int lock; } ;
struct dma_chan {int dummy; } ;


 int ZYNQMP_DMA_DESC_SIZE (struct zynqmp_dma_chan*) ;
 int ZYNQMP_DMA_NUM_DESCS ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int kfree (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zynqmp_dma_chan* to_chan (struct dma_chan*) ;
 int zynqmp_dma_free_descriptors (struct zynqmp_dma_chan*) ;

__attribute__((used)) static void zynqmp_dma_free_chan_resources(struct dma_chan *dchan)
{
 struct zynqmp_dma_chan *chan = to_chan(dchan);
 unsigned long irqflags;

 spin_lock_irqsave(&chan->lock, irqflags);
 zynqmp_dma_free_descriptors(chan);
 spin_unlock_irqrestore(&chan->lock, irqflags);
 dma_free_coherent(chan->dev,
  (2 * ZYNQMP_DMA_DESC_SIZE(chan) * ZYNQMP_DMA_NUM_DESCS),
  chan->desc_pool_v, chan->desc_pool_p);
 kfree(chan->sw_desc_pool);
 pm_runtime_mark_last_busy(chan->dev);
 pm_runtime_put_autosuspend(chan->dev);
}
