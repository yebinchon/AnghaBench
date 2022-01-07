
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_i2c_dev {int fast_clk; TYPE_1__* hw; int div_clk; scalar_t__ is_multimaster_mode; int adapter; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int has_single_clk_source; } ;


 int clk_disable (int ) ;
 int clk_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct tegra_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int tegra_i2c_release_dma (struct tegra_i2c_dev*) ;
 int tegra_i2c_runtime_suspend (int *) ;

__attribute__((used)) static int tegra_i2c_remove(struct platform_device *pdev)
{
 struct tegra_i2c_dev *i2c_dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c_dev->adapter);

 if (i2c_dev->is_multimaster_mode)
  clk_disable(i2c_dev->div_clk);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra_i2c_runtime_suspend(&pdev->dev);

 clk_unprepare(i2c_dev->div_clk);
 if (!i2c_dev->hw->has_single_clk_source)
  clk_unprepare(i2c_dev->fast_clk);

 tegra_i2c_release_dma(i2c_dev);
 return 0;
}
