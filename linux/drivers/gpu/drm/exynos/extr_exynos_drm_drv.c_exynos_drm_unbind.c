
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; int dev; } ;
struct device {int dummy; } ;


 int component_unbind_all (int ,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int exynos_drm_cleanup_dma (struct drm_device*) ;
 int exynos_drm_fbdev_fini (struct drm_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void exynos_drm_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);

 drm_dev_unregister(drm);

 exynos_drm_fbdev_fini(drm);
 drm_kms_helper_poll_fini(drm);

 component_unbind_all(drm->dev, drm);
 drm_mode_config_cleanup(drm);
 exynos_drm_cleanup_dma(drm);

 kfree(drm->dev_private);
 drm->dev_private = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));

 drm_dev_put(drm);
}
