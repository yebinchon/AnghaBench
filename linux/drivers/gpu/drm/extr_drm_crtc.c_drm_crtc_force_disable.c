
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_crtc {int dev; } ;


 int WARN_ON (int ) ;
 int drm_drv_uses_atomic_modeset (int ) ;
 int drm_mode_set_config_internal (struct drm_mode_set*) ;

int drm_crtc_force_disable(struct drm_crtc *crtc)
{
 struct drm_mode_set set = {
  .crtc = crtc,
 };

 WARN_ON(drm_drv_uses_atomic_modeset(crtc->dev));

 return drm_mode_set_config_internal(&set);
}
