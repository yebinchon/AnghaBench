
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct panfrost_device {int dev; struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int panfrost_devfreq_fini (struct panfrost_device*) ;
 int panfrost_device_fini (struct panfrost_device*) ;
 int panfrost_gem_shrinker_cleanup (struct drm_device*) ;
 struct panfrost_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_suspend (int ) ;

__attribute__((used)) static int panfrost_remove(struct platform_device *pdev)
{
 struct panfrost_device *pfdev = platform_get_drvdata(pdev);
 struct drm_device *ddev = pfdev->ddev;

 drm_dev_unregister(ddev);
 panfrost_gem_shrinker_cleanup(ddev);

 pm_runtime_get_sync(pfdev->dev);
 panfrost_devfreq_fini(pfdev);
 panfrost_device_fini(pfdev);
 pm_runtime_put_sync_suspend(pfdev->dev);
 pm_runtime_disable(pfdev->dev);

 drm_dev_put(ddev);
 return 0;
}
