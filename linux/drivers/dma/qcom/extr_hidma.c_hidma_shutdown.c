
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct hidma_dev {TYPE_1__ ddev; int lldev; } ;


 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ hidma_ll_disable (int ) ;
 struct hidma_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static void hidma_shutdown(struct platform_device *pdev)
{
 struct hidma_dev *dmadev = platform_get_drvdata(pdev);

 dev_info(dmadev->ddev.dev, "HI-DMA engine shutdown\n");

 pm_runtime_get_sync(dmadev->ddev.dev);
 if (hidma_ll_disable(dmadev->lldev))
  dev_warn(dmadev->ddev.dev, "channel did not stop\n");
 pm_runtime_mark_last_busy(dmadev->ddev.dev);
 pm_runtime_put_autosuspend(dmadev->ddev.dev);

}
