
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;


 int DRM_MODE_DPMS_ON ;
 int stub1 (struct drm_crtc*,int ) ;

void gma_crtc_commit(struct drm_crtc *crtc)
{
 const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
 crtc_funcs->dpms(crtc, DRM_MODE_DPMS_ON);
}
