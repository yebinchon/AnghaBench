
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_crtc {scalar_t__ crtc_id; scalar_t__ rmx_type; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ RMX_OFF ;
 int radeon_crtc_set_base (struct drm_crtc*,int,int,struct drm_framebuffer*) ;
 int radeon_cursor_reset (struct drm_crtc*) ;
 int radeon_legacy_rmx_mode_set (struct drm_crtc*,struct drm_display_mode*) ;
 int radeon_overscan_setup (struct drm_crtc*,struct drm_display_mode*) ;
 int radeon_set_crtc_timing (struct drm_crtc*,struct drm_display_mode*) ;
 int radeon_set_pll (struct drm_crtc*,struct drm_display_mode*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static int radeon_crtc_mode_set(struct drm_crtc *crtc,
     struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode,
     int x, int y, struct drm_framebuffer *old_fb)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);


 radeon_crtc_set_base(crtc, x, y, old_fb);
 radeon_set_crtc_timing(crtc, adjusted_mode);
 radeon_set_pll(crtc, adjusted_mode);
 radeon_overscan_setup(crtc, adjusted_mode);
 if (radeon_crtc->crtc_id == 0) {
  radeon_legacy_rmx_mode_set(crtc, adjusted_mode);
 } else {
  if (radeon_crtc->rmx_type != RMX_OFF) {



   DRM_ERROR("Mode need scaling but only first crtc can do that.\n");
  }
 }
 radeon_cursor_reset(crtc);
 return 0;
}
