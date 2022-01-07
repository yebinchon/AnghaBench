
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_mic {int bridge; } ;


 int component_del (int *,int *) ;
 int drm_bridge_remove (int *) ;
 int exynos_mic_component_ops ;
 struct exynos_mic* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int exynos_mic_remove(struct platform_device *pdev)
{
 struct exynos_mic *mic = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &exynos_mic_component_ops);
 pm_runtime_disable(&pdev->dev);

 drm_bridge_remove(&mic->bridge);

 return 0;
}
