
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int task; } ;
struct TYPE_6__ {TYPE_2__ vchan; } ;
struct axi_dmac {int clk; int dma_dev; TYPE_3__ chan; int irq; } ;


 int clk_disable_unprepare (int ) ;
 int dma_async_device_unregister (int *) ;
 int free_irq (int ,struct axi_dmac*) ;
 int of_dma_controller_free (int ) ;
 struct axi_dmac* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int axi_dmac_remove(struct platform_device *pdev)
{
 struct axi_dmac *dmac = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);
 free_irq(dmac->irq, dmac);
 tasklet_kill(&dmac->chan.vchan.task);
 dma_async_device_unregister(&dmac->dma_dev);
 clk_disable_unprepare(dmac->clk);

 return 0;
}
