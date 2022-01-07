
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct owl_dma_pchan {int id; int * vchan; } ;
struct TYPE_2__ {int dev; } ;
struct owl_dma {int lock; TYPE_1__ dma; } ;


 int OWL_DMAX_INT_STATUS ;
 int OWL_DMAX_START ;
 int OWL_DMA_IRQ_EN0 ;
 int OWL_DMA_IRQ_PD0 ;
 int dev_warn (int ,char*,int) ;
 int dma_readl (struct owl_dma*,int ) ;
 int dma_update (struct owl_dma*,int ,int,int) ;
 int dma_writel (struct owl_dma*,int ,int) ;
 int pchan_update (struct owl_dma_pchan*,int ,int,int) ;
 int pchan_writel (struct owl_dma_pchan*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void owl_dma_terminate_pchan(struct owl_dma *od,
        struct owl_dma_pchan *pchan)
{
 unsigned long flags;
 u32 irq_pd;

 pchan_writel(pchan, OWL_DMAX_START, 0);
 pchan_update(pchan, OWL_DMAX_INT_STATUS, 0xff, 0);

 spin_lock_irqsave(&od->lock, flags);
 dma_update(od, OWL_DMA_IRQ_EN0, (1 << pchan->id), 0);

 irq_pd = dma_readl(od, OWL_DMA_IRQ_PD0);
 if (irq_pd & (1 << pchan->id)) {
  dev_warn(od->dma.dev,
    "terminating pchan %d that still has pending irq\n",
    pchan->id);
  dma_writel(od, OWL_DMA_IRQ_PD0, (1 << pchan->id));
 }

 pchan->vchan = ((void*)0);

 spin_unlock_irqrestore(&od->lock, flags);
}
