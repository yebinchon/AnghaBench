
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ENXIO ;
 int dev_name (int *) ;
 int platform_get_irq (struct platform_device*,int) ;
 int request_irq (int,int ,int ,int ,void*) ;
 int sa11x0_dma_irq ;

__attribute__((used)) static int sa11x0_dma_request_irq(struct platform_device *pdev, int nr,
 void *data)
{
 int irq = platform_get_irq(pdev, nr);

 if (irq <= 0)
  return -ENXIO;

 return request_irq(irq, sa11x0_dma_irq, 0, dev_name(&pdev->dev), data);
}
