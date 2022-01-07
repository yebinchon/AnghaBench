
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc_dma {int tasklet; int irq; int irq2; scalar_t__ is_mpc8308; int dma; } ;


 struct mpc_dma* dev_get_drvdata (struct device*) ;
 int dma_async_device_unregister (int *) ;
 int free_irq (int ,struct mpc_dma*) ;
 int irq_dispose_mapping (int ) ;
 int of_dma_controller_free (scalar_t__) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int mpc_dma_remove(struct platform_device *op)
{
 struct device *dev = &op->dev;
 struct mpc_dma *mdma = dev_get_drvdata(dev);

 if (dev->of_node)
  of_dma_controller_free(dev->of_node);
 dma_async_device_unregister(&mdma->dma);
 if (mdma->is_mpc8308) {
  free_irq(mdma->irq2, mdma);
  irq_dispose_mapping(mdma->irq2);
 }
 free_irq(mdma->irq, mdma);
 irq_dispose_mapping(mdma->irq);
 tasklet_kill(&mdma->tasklet);

 return 0;
}
