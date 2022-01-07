
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int tasklet; } ;
struct xgene_dma {int clk; struct xgene_dma_chan* chan; } ;
struct platform_device {int dummy; } ;


 int IS_ERR (int ) ;
 int XGENE_DMA_MAX_CHANNEL ;
 int clk_disable_unprepare (int ) ;
 struct xgene_dma* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;
 int xgene_dma_async_unregister (struct xgene_dma*) ;
 int xgene_dma_delete_chan_rings (struct xgene_dma_chan*) ;
 int xgene_dma_disable (struct xgene_dma*) ;
 int xgene_dma_free_irqs (struct xgene_dma*) ;
 int xgene_dma_mask_interrupts (struct xgene_dma*) ;

__attribute__((used)) static int xgene_dma_remove(struct platform_device *pdev)
{
 struct xgene_dma *pdma = platform_get_drvdata(pdev);
 struct xgene_dma_chan *chan;
 int i;

 xgene_dma_async_unregister(pdma);


 xgene_dma_mask_interrupts(pdma);
 xgene_dma_disable(pdma);
 xgene_dma_free_irqs(pdma);

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
  chan = &pdma->chan[i];
  tasklet_kill(&chan->tasklet);
  xgene_dma_delete_chan_rings(chan);
 }

 if (!IS_ERR(pdma->clk))
  clk_disable_unprepare(pdma->clk);

 return 0;
}
