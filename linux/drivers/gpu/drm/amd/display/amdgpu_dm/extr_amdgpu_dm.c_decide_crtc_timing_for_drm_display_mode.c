
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {scalar_t__ clock; scalar_t__ htotal; scalar_t__ vtotal; } ;


 int copy_crtc_timing_for_drm_display_mode (struct drm_display_mode const*,struct drm_display_mode*) ;

__attribute__((used)) static void
decide_crtc_timing_for_drm_display_mode(struct drm_display_mode *drm_mode,
     const struct drm_display_mode *native_mode,
     bool scale_enabled)
{
 if (scale_enabled) {
  copy_crtc_timing_for_drm_display_mode(native_mode, drm_mode);
 } else if (native_mode->clock == drm_mode->clock &&
   native_mode->htotal == drm_mode->htotal &&
   native_mode->vtotal == drm_mode->vtotal) {
  copy_crtc_timing_for_drm_display_mode(native_mode, drm_mode);
 } else {

 }
}
