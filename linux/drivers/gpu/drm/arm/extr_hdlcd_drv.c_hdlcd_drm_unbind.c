
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * port; } ;
struct hdlcd_drm_private {TYPE_1__ crtc; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int component_unbind_all (struct device*,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_crtc_vblank_off (TYPE_1__*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int of_node_put (int *) ;
 int of_reserved_mem_device_release (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static void hdlcd_drm_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct hdlcd_drm_private *hdlcd = drm->dev_private;

 drm_dev_unregister(drm);
 drm_kms_helper_poll_fini(drm);
 component_unbind_all(dev, drm);
 of_node_put(hdlcd->crtc.port);
 hdlcd->crtc.port = ((void*)0);
 pm_runtime_get_sync(dev);
 drm_crtc_vblank_off(&hdlcd->crtc);
 drm_irq_uninstall(drm);
 drm_atomic_helper_shutdown(drm);
 pm_runtime_put(dev);
 if (pm_runtime_enabled(dev))
  pm_runtime_disable(dev);
 of_reserved_mem_device_release(dev);
 drm_mode_config_cleanup(drm);
 drm->dev_private = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));
 drm_dev_put(drm);
}
