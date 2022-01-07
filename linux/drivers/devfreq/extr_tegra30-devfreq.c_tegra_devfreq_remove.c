
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {int clock; int reset; int rate_change_nb; int emc_clock; int devfreq; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 int dev_pm_opp_remove_all_dynamic (int *) ;
 int devfreq_remove_device (int ) ;
 int devfreq_remove_governor (int *) ;
 struct tegra_devfreq* platform_get_drvdata (struct platform_device*) ;
 int reset_control_reset (int ) ;
 int tegra_devfreq_governor ;

__attribute__((used)) static int tegra_devfreq_remove(struct platform_device *pdev)
{
 struct tegra_devfreq *tegra = platform_get_drvdata(pdev);

 devfreq_remove_device(tegra->devfreq);
 devfreq_remove_governor(&tegra_devfreq_governor);

 clk_notifier_unregister(tegra->emc_clock, &tegra->rate_change_nb);
 dev_pm_opp_remove_all_dynamic(&pdev->dev);

 reset_control_reset(tegra->reset);
 clk_disable_unprepare(tegra->clock);

 return 0;
}
