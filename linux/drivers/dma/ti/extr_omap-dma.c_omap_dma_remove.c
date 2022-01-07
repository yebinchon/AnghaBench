
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_dmadev {int desc_pool; scalar_t__ ll123_supported; int legacy; int ddev; } ;


 int IRQENABLE_L0 ;
 int devm_free_irq (TYPE_1__*,int,struct omap_dmadev*) ;
 int dma_async_device_unregister (int *) ;
 int dma_pool_destroy (int ) ;
 int of_dma_controller_free (scalar_t__) ;
 int omap_dma_free (struct omap_dmadev*) ;
 int omap_dma_glbl_write (struct omap_dmadev*,int ,int ) ;
 struct omap_dmadev* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int) ;

__attribute__((used)) static int omap_dma_remove(struct platform_device *pdev)
{
 struct omap_dmadev *od = platform_get_drvdata(pdev);
 int irq;

 if (pdev->dev.of_node)
  of_dma_controller_free(pdev->dev.of_node);

 irq = platform_get_irq(pdev, 1);
 devm_free_irq(&pdev->dev, irq, od);

 dma_async_device_unregister(&od->ddev);

 if (!od->legacy) {

  omap_dma_glbl_write(od, IRQENABLE_L0, 0);
 }

 if (od->ll123_supported)
  dma_pool_destroy(od->desc_pool);

 omap_dma_free(od);

 return 0;
}
