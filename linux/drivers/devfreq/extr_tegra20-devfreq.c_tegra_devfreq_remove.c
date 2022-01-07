
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {int devfreq; } ;
struct platform_device {int dev; } ;


 int dev_pm_opp_remove_all_dynamic (int *) ;
 int devfreq_remove_device (int ) ;
 struct tegra_devfreq* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_devfreq_remove(struct platform_device *pdev)
{
 struct tegra_devfreq *tegra = platform_get_drvdata(pdev);

 devfreq_remove_device(tegra->devfreq);
 dev_pm_opp_remove_all_dynamic(&pdev->dev);

 return 0;
}
