
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int component_unbind_all (struct device*,int *) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int of_reserved_mem_device_release (struct device*) ;

__attribute__((used)) static void sun4i_drv_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);

 drm_dev_unregister(drm);
 drm_kms_helper_poll_fini(drm);
 drm_atomic_helper_shutdown(drm);
 drm_mode_config_cleanup(drm);

 component_unbind_all(dev, ((void*)0));
 of_reserved_mem_device_release(dev);

 drm_dev_put(drm);
}
