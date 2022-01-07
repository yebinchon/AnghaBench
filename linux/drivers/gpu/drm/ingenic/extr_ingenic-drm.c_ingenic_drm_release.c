
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_dev_fini (struct drm_device*) ;
 struct ingenic_drm* drm_device_get_priv (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kfree (struct ingenic_drm*) ;

__attribute__((used)) static void ingenic_drm_release(struct drm_device *drm)
{
 struct ingenic_drm *priv = drm_device_get_priv(drm);

 drm_mode_config_cleanup(drm);
 drm_dev_fini(drm);
 kfree(priv);
}
