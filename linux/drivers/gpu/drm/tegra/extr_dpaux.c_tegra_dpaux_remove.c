
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dpaux {int list; int aux; int work; } ;
struct platform_device {int dev; } ;


 int cancel_work_sync (int *) ;
 int dpaux_lock ;
 int drm_dp_aux_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tegra_dpaux* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put (int *) ;
 int tegra_dpaux_pad_power_down (struct tegra_dpaux*) ;

__attribute__((used)) static int tegra_dpaux_remove(struct platform_device *pdev)
{
 struct tegra_dpaux *dpaux = platform_get_drvdata(pdev);

 cancel_work_sync(&dpaux->work);


 tegra_dpaux_pad_power_down(dpaux);

 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 drm_dp_aux_unregister(&dpaux->aux);

 mutex_lock(&dpaux_lock);
 list_del(&dpaux->list);
 mutex_unlock(&dpaux_lock);

 return 0;
}
