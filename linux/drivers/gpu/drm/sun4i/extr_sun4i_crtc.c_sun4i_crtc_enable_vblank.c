
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_crtc {int tcon; } ;
struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,struct drm_crtc*) ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 int sun4i_tcon_enable_vblank (int ,int) ;

__attribute__((used)) static int sun4i_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);

 DRM_DEBUG_DRIVER("Enabling VBLANK on crtc %p\n", crtc);

 sun4i_tcon_enable_vblank(scrtc->tcon, 1);

 return 0;
}
