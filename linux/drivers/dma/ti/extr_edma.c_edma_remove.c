
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct edma_cc {int dummy_slot; int * dma_memcpy; int dma_slave; int ccerrint; int ccint; } ;


 struct edma_cc* dev_get_drvdata (struct device*) ;
 int devm_free_irq (struct device*,int ,struct edma_cc*) ;
 int dma_async_device_unregister (int *) ;
 int edma_cleanupp_vchan (int *) ;
 int edma_free_slot (struct edma_cc*,int ) ;
 int of_dma_controller_free (scalar_t__) ;

__attribute__((used)) static int edma_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct edma_cc *ecc = dev_get_drvdata(dev);

 devm_free_irq(dev, ecc->ccint, ecc);
 devm_free_irq(dev, ecc->ccerrint, ecc);

 edma_cleanupp_vchan(&ecc->dma_slave);

 if (dev->of_node)
  of_dma_controller_free(dev->of_node);
 dma_async_device_unregister(&ecc->dma_slave);
 if (ecc->dma_memcpy)
  dma_async_device_unregister(ecc->dma_memcpy);
 edma_free_slot(ecc, ecc->dummy_slot);

 return 0;
}
