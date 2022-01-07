
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {int dev; } ;
struct hidma_dev {TYPE_1__* lldev; int task; int irq; TYPE_2__ ddev; } ;
struct TYPE_4__ {int msi_support; } ;


 int dev_info (int *,char*) ;
 int devm_free_irq (int ,int ,TYPE_1__*) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int hidma_debug_uninit (struct hidma_dev*) ;
 int hidma_free (struct hidma_dev*) ;
 int hidma_free_msis (struct hidma_dev*) ;
 int hidma_ll_uninit (TYPE_1__*) ;
 int hidma_sysfs_uninit (struct hidma_dev*) ;
 struct hidma_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_suspend (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int hidma_remove(struct platform_device *pdev)
{
 struct hidma_dev *dmadev = platform_get_drvdata(pdev);

 pm_runtime_get_sync(dmadev->ddev.dev);
 dma_async_device_unregister(&dmadev->ddev);
 if (!dmadev->lldev->msi_support)
  devm_free_irq(dmadev->ddev.dev, dmadev->irq, dmadev->lldev);
 else
  hidma_free_msis(dmadev);

 tasklet_kill(&dmadev->task);
 hidma_sysfs_uninit(dmadev);
 hidma_debug_uninit(dmadev);
 hidma_ll_uninit(dmadev->lldev);
 hidma_free(dmadev);

 dev_info(&pdev->dev, "HI-DMA engine removed\n");
 pm_runtime_put_sync_suspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
