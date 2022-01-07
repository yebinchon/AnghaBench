
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_crtc_helper_funcs {int (* mode_valid ) (struct drm_crtc*,struct drm_display_mode const*) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_OK ;
 int stub1 (struct drm_crtc*,struct drm_display_mode const*) ;

enum drm_mode_status drm_crtc_mode_valid(struct drm_crtc *crtc,
      const struct drm_display_mode *mode)
{
 const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;

 if (!crtc_funcs || !crtc_funcs->mode_valid)
  return MODE_OK;

 return crtc_funcs->mode_valid(crtc, mode);
}
