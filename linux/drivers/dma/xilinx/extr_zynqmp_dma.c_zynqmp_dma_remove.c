
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_dma_device {int dev; int chan; int common; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct zynqmp_dma_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enabled (int ) ;
 int zynqmp_dma_chan_remove (int ) ;
 int zynqmp_dma_runtime_suspend (int ) ;

__attribute__((used)) static int zynqmp_dma_remove(struct platform_device *pdev)
{
 struct zynqmp_dma_device *zdev = platform_get_drvdata(pdev);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&zdev->common);

 zynqmp_dma_chan_remove(zdev->chan);
 pm_runtime_disable(zdev->dev);
 if (!pm_runtime_enabled(zdev->dev))
  zynqmp_dma_runtime_suspend(zdev->dev);

 return 0;
}
