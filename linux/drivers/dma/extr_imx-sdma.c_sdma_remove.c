
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {struct sdma_channel* channel; int clk_ipg; int clk_ahb; int script_addrs; int dma_device; int irq; } ;
struct TYPE_2__ {int chan; int task; } ;
struct sdma_channel {TYPE_1__ vc; } ;
struct platform_device {int dev; } ;


 int MAX_DMA_CHANNELS ;
 int clk_unprepare (int ) ;
 int devm_free_irq (int *,int ,struct sdma_engine*) ;
 int dma_async_device_unregister (int *) ;
 int kfree (int ) ;
 struct sdma_engine* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int sdma_free_chan_resources (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int sdma_remove(struct platform_device *pdev)
{
 struct sdma_engine *sdma = platform_get_drvdata(pdev);
 int i;

 devm_free_irq(&pdev->dev, sdma->irq, sdma);
 dma_async_device_unregister(&sdma->dma_device);
 kfree(sdma->script_addrs);
 clk_unprepare(sdma->clk_ahb);
 clk_unprepare(sdma->clk_ipg);

 for (i = 0; i < MAX_DMA_CHANNELS; i++) {
  struct sdma_channel *sdmac = &sdma->channel[i];

  tasklet_kill(&sdmac->vc.task);
  sdma_free_chan_resources(&sdmac->vc.chan);
 }

 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
