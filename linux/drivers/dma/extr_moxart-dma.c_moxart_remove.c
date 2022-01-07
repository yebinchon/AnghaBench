
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct moxart_dmadev {int dma_slave; int irq; } ;


 int devm_free_irq (TYPE_1__*,int ,struct moxart_dmadev*) ;
 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (scalar_t__) ;
 struct moxart_dmadev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int moxart_remove(struct platform_device *pdev)
{
 struct moxart_dmadev *m = platform_get_drvdata(pdev);

 devm_free_irq(&pdev->dev, m->irq, m);

 dma_async_device_unregister(&m->dma_slave);

 if (pdev->dev.of_node)
  of_dma_controller_free(pdev->dev.of_node);

 return 0;
}
