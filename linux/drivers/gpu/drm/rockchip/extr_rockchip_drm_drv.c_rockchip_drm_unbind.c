
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
struct device {int dummy; } ;


 int component_unbind_all (struct device*,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int rockchip_drm_fbdev_fini (struct drm_device*) ;
 int rockchip_iommu_cleanup (struct drm_device*) ;

__attribute__((used)) static void rockchip_drm_unbind(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 drm_dev_unregister(drm_dev);

 rockchip_drm_fbdev_fini(drm_dev);
 drm_kms_helper_poll_fini(drm_dev);

 drm_atomic_helper_shutdown(drm_dev);
 component_unbind_all(dev, drm_dev);
 drm_mode_config_cleanup(drm_dev);
 rockchip_iommu_cleanup(drm_dev);

 drm_dev->dev_private = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));
 drm_dev_put(drm_dev);
}
