
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_dma {int irq; int tasklet; int dma; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 struct sirfsoc_dma* dev_get_drvdata (struct device*) ;
 int dma_async_device_unregister (int *) ;
 int free_irq (int ,struct sirfsoc_dma*) ;
 int irq_dispose_mapping (int ) ;
 int of_dma_controller_free (int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_status_suspended (struct device*) ;
 int sirfsoc_dma_runtime_suspend (struct device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int sirfsoc_dma_remove(struct platform_device *op)
{
 struct device *dev = &op->dev;
 struct sirfsoc_dma *sdma = dev_get_drvdata(dev);

 of_dma_controller_free(op->dev.of_node);
 dma_async_device_unregister(&sdma->dma);
 free_irq(sdma->irq, sdma);
 tasklet_kill(&sdma->tasklet);
 irq_dispose_mapping(sdma->irq);
 pm_runtime_disable(&op->dev);
 if (!pm_runtime_status_suspended(&op->dev))
  sirfsoc_dma_runtime_suspend(&op->dev);

 return 0;
}
