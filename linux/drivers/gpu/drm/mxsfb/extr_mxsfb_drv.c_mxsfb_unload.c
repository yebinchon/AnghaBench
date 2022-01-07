
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; int * dev_private; } ;


 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void mxsfb_unload(struct drm_device *drm)
{
 drm_kms_helper_poll_fini(drm);
 drm_mode_config_cleanup(drm);

 pm_runtime_get_sync(drm->dev);
 drm_irq_uninstall(drm);
 pm_runtime_put_sync(drm->dev);

 drm->dev_private = ((void*)0);

 pm_runtime_disable(drm->dev);
}
