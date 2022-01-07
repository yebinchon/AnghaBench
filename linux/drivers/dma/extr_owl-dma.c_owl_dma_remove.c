
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int dev; } ;
struct owl_dma {int clk; int irq; TYPE_2__ dma; } ;


 int OWL_DMA_IRQ_EN0 ;
 int clk_disable_unprepare (int ) ;
 int devm_free_irq (int ,int ,struct owl_dma*) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int dma_writel (struct owl_dma*,int ,int) ;
 int of_dma_controller_free (int ) ;
 int owl_dma_free (struct owl_dma*) ;
 struct owl_dma* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int owl_dma_remove(struct platform_device *pdev)
{
 struct owl_dma *od = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&od->dma);


 dma_writel(od, OWL_DMA_IRQ_EN0, 0x0);


 devm_free_irq(od->dma.dev, od->irq, od);

 owl_dma_free(od);

 clk_disable_unprepare(od->clk);

 return 0;
}
