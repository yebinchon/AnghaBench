
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int free_irq (int,void*) ;
 int platform_get_irq (struct platform_device*,int) ;

__attribute__((used)) static void sa11x0_dma_free_irq(struct platform_device *pdev, int nr,
 void *data)
{
 int irq = platform_get_irq(pdev, nr);
 if (irq > 0)
  free_irq(irq, data);
}
