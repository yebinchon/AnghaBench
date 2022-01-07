
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {struct drm_display_mode hw_mode; int adjusted_clock; } ;


 int EINVAL ;
 int amdgpu_atombios_crtc_overscan_setup (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ;
 int amdgpu_atombios_crtc_scaler_setup (struct drm_crtc*) ;
 int amdgpu_atombios_crtc_set_dtd_timing (struct drm_crtc*,struct drm_display_mode*) ;
 int amdgpu_atombios_crtc_set_pll (struct drm_crtc*,struct drm_display_mode*) ;
 int dce_v8_0_crtc_do_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int ) ;
 int dce_v8_0_cursor_reset (struct drm_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static int dce_v8_0_crtc_mode_set(struct drm_crtc *crtc,
      struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode,
      int x, int y, struct drm_framebuffer *old_fb)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);

 if (!amdgpu_crtc->adjusted_clock)
  return -EINVAL;

 amdgpu_atombios_crtc_set_pll(crtc, adjusted_mode);
 amdgpu_atombios_crtc_set_dtd_timing(crtc, adjusted_mode);
 dce_v8_0_crtc_do_set_base(crtc, old_fb, x, y, 0);
 amdgpu_atombios_crtc_overscan_setup(crtc, mode, adjusted_mode);
 amdgpu_atombios_crtc_scaler_setup(crtc);
 dce_v8_0_cursor_reset(crtc);

 amdgpu_crtc->hw_mode = *adjusted_mode;

 return 0;
}
