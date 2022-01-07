
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_hw_device {int dummy; } ;
struct TYPE_2__ {int * port; } ;
struct malidp_drm {TYPE_1__ crtc; struct malidp_hw_device* dev; } ;
struct drm_device {int irq_enabled; struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;


 int component_unbind_all (struct device*,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_crtc_vblank_off (TYPE_1__*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int malidp_de_irq_fini (struct malidp_hw_device*) ;
 int malidp_fini (struct drm_device*) ;
 int malidp_fini_sysfs (struct device*) ;
 int malidp_runtime_pm_suspend (struct device*) ;
 int malidp_se_irq_fini (struct malidp_hw_device*) ;
 int of_node_put (int *) ;
 int of_reserved_mem_device_release (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static void malidp_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev = malidp->dev;

 drm_dev_unregister(drm);
 drm_kms_helper_poll_fini(drm);
 pm_runtime_get_sync(dev);
 drm_crtc_vblank_off(&malidp->crtc);
 malidp_se_irq_fini(hwdev);
 malidp_de_irq_fini(hwdev);
 drm->irq_enabled = 0;
 drm_atomic_helper_shutdown(drm);
 component_unbind_all(dev, drm);
 of_node_put(malidp->crtc.port);
 malidp->crtc.port = ((void*)0);
 malidp_fini_sysfs(dev);
 malidp_fini(drm);
 pm_runtime_put(dev);
 if (pm_runtime_enabled(dev))
  pm_runtime_disable(dev);
 else
  malidp_runtime_pm_suspend(dev);
 drm->dev_private = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));
 drm_dev_put(drm);
 of_reserved_mem_device_release(dev);
}
