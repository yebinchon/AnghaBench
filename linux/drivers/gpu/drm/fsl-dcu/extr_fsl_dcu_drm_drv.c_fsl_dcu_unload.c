
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;

__attribute__((used)) static void fsl_dcu_unload(struct drm_device *dev)
{
 drm_atomic_helper_shutdown(dev);
 drm_kms_helper_poll_fini(dev);

 drm_mode_config_cleanup(dev);
 drm_irq_uninstall(dev);

 dev->dev_private = ((void*)0);
}
