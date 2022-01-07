
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msgdma_device {int dmadev; } ;


 int dev_notice (int *,char*) ;
 int dma_async_device_unregister (int *) ;
 int msgdma_dev_remove (struct msgdma_device*) ;
 struct msgdma_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int msgdma_remove(struct platform_device *pdev)
{
 struct msgdma_device *mdev = platform_get_drvdata(pdev);

 dma_async_device_unregister(&mdev->dmadev);
 msgdma_dev_remove(mdev);

 dev_notice(&pdev->dev, "Altera mSGDMA driver removed\n");

 return 0;
}
