
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa11x0_dma_dev {int base; int task; int * phy; int slave; } ;
struct platform_device {int dummy; } ;


 unsigned int NR_PHY_CHAN ;
 int dma_async_device_unregister (int *) ;
 int iounmap (int ) ;
 int kfree (struct sa11x0_dma_dev*) ;
 struct sa11x0_dma_dev* platform_get_drvdata (struct platform_device*) ;
 int sa11x0_dma_free_channels (int *) ;
 int sa11x0_dma_free_irq (struct platform_device*,unsigned int,int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int sa11x0_dma_remove(struct platform_device *pdev)
{
 struct sa11x0_dma_dev *d = platform_get_drvdata(pdev);
 unsigned pch;

 dma_async_device_unregister(&d->slave);

 sa11x0_dma_free_channels(&d->slave);
 for (pch = 0; pch < NR_PHY_CHAN; pch++)
  sa11x0_dma_free_irq(pdev, pch, &d->phy[pch]);
 tasklet_kill(&d->task);
 iounmap(d->base);
 kfree(d);

 return 0;
}
