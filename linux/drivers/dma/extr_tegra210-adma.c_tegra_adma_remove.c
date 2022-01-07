
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_adma {int nr_channels; TYPE_1__* channels; int dma_dev; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int irq; } ;


 int dma_async_device_unregister (int *) ;
 int irq_dispose_mapping (int ) ;
 int of_dma_controller_free (int ) ;
 struct tegra_adma* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_put_sync (TYPE_2__*) ;

__attribute__((used)) static int tegra_adma_remove(struct platform_device *pdev)
{
 struct tegra_adma *tdma = platform_get_drvdata(pdev);
 int i;

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&tdma->dma_dev);

 for (i = 0; i < tdma->nr_channels; ++i)
  irq_dispose_mapping(tdma->channels[i].irq);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
