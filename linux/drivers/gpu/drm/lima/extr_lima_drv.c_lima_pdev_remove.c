
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lima_device {struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int lima_device_fini (struct lima_device*) ;
 int lima_sched_slab_fini () ;
 struct lima_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lima_pdev_remove(struct platform_device *pdev)
{
 struct lima_device *ldev = platform_get_drvdata(pdev);
 struct drm_device *ddev = ldev->ddev;

 drm_dev_unregister(ddev);
 lima_device_fini(ldev);
 drm_dev_put(ddev);
 lima_sched_slab_fini();
 return 0;
}
