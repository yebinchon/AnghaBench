
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct at_xdmac_chan {int chan; int tasklet; } ;
struct TYPE_4__ {int chancnt; } ;
struct at_xdmac {struct at_xdmac_chan* chan; TYPE_2__ dma; int irq; int clk; } ;


 int at_xdmac_free_chan_resources (int *) ;
 int at_xdmac_off (struct at_xdmac*) ;
 int clk_disable_unprepare (int ) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int free_irq (int ,struct at_xdmac*) ;
 int of_dma_controller_free (int ) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int at_xdmac_remove(struct platform_device *pdev)
{
 struct at_xdmac *atxdmac = (struct at_xdmac *)platform_get_drvdata(pdev);
 int i;

 at_xdmac_off(atxdmac);
 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&atxdmac->dma);
 clk_disable_unprepare(atxdmac->clk);

 free_irq(atxdmac->irq, atxdmac);

 for (i = 0; i < atxdmac->dma.chancnt; i++) {
  struct at_xdmac_chan *atchan = &atxdmac->chan[i];

  tasklet_kill(&atchan->tasklet);
  at_xdmac_free_chan_resources(&atchan->chan);
 }

 return 0;
}
