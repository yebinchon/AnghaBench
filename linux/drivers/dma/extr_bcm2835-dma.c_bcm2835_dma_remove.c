
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm2835_dmadev {int ddev; } ;


 int bcm2835_dma_free (struct bcm2835_dmadev*) ;
 int dma_async_device_unregister (int *) ;
 struct bcm2835_dmadev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm2835_dma_remove(struct platform_device *pdev)
{
 struct bcm2835_dmadev *od = platform_get_drvdata(pdev);

 dma_async_device_unregister(&od->ddev);
 bcm2835_dma_free(od);

 return 0;
}
