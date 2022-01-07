
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int wq; struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 int DBG (char*) ;
 int destroy_workqueue (int ) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int omap_crtc_pre_uninit (struct omap_drm_private*) ;
 int omap_disconnect_pipelines (struct drm_device*) ;
 int omap_drm_irq_uninstall (struct drm_device*) ;
 int omap_fbdev_fini (struct drm_device*) ;
 int omap_gem_deinit (struct drm_device*) ;
 int omap_modeset_disable_external_hpd (struct drm_device*) ;

__attribute__((used)) static void omapdrm_cleanup(struct omap_drm_private *priv)
{
 struct drm_device *ddev = priv->ddev;

 DBG("");

 drm_dev_unregister(ddev);

 omap_modeset_disable_external_hpd(ddev);
 drm_kms_helper_poll_fini(ddev);

 omap_fbdev_fini(ddev);

 drm_atomic_helper_shutdown(ddev);

 drm_mode_config_cleanup(ddev);

 omap_drm_irq_uninstall(ddev);
 omap_gem_deinit(ddev);

 destroy_workqueue(priv->wq);

 omap_disconnect_pipelines(ddev);
 omap_crtc_pre_uninit(priv);

 drm_dev_put(ddev);
}
