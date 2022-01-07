
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dma_channel {int tasklet; int irq; } ;
struct tegra_dma {struct tegra_dma_channel* channels; TYPE_1__* chip_data; int dma_dev; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int nr_channels; } ;


 int dma_async_device_unregister (int *) ;
 int free_irq (int ,struct tegra_dma_channel*) ;
 struct tegra_dma* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int tasklet_kill (int *) ;
 int tegra_dma_runtime_suspend (int *) ;

__attribute__((used)) static int tegra_dma_remove(struct platform_device *pdev)
{
 struct tegra_dma *tdma = platform_get_drvdata(pdev);
 int i;
 struct tegra_dma_channel *tdc;

 dma_async_device_unregister(&tdma->dma_dev);

 for (i = 0; i < tdma->chip_data->nr_channels; ++i) {
  tdc = &tdma->channels[i];
  free_irq(tdc->irq, tdc);
  tasklet_kill(&tdc->tasklet);
 }

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra_dma_runtime_suspend(&pdev->dev);

 return 0;
}
