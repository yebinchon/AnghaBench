
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int active_device; } ;
struct radeon_device {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_id; struct drm_display_mode hw_mode; int adjusted_clock; int encoder; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_TV_SUPPORT ;
 int EINVAL ;
 int atombios_crtc_set_base (struct drm_crtc*,int,int,struct drm_framebuffer*) ;
 int atombios_crtc_set_pll (struct drm_crtc*,struct drm_display_mode*) ;
 int atombios_crtc_set_timing (struct drm_crtc*,struct drm_display_mode*) ;
 int atombios_overscan_setup (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ;
 int atombios_scaler_setup (struct drm_crtc*) ;
 int atombios_set_crtc_dtd_timing (struct drm_crtc*,struct drm_display_mode*) ;
 int radeon_cursor_reset (struct drm_crtc*) ;
 int radeon_legacy_atom_fixup (struct drm_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

int atombios_crtc_mode_set(struct drm_crtc *crtc,
      struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode,
      int x, int y, struct drm_framebuffer *old_fb)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder =
  to_radeon_encoder(radeon_crtc->encoder);
 bool is_tvcv = 0;

 if (radeon_encoder->active_device &
     (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))
  is_tvcv = 1;

 if (!radeon_crtc->adjusted_clock)
  return -EINVAL;

 atombios_crtc_set_pll(crtc, adjusted_mode);

 if (ASIC_IS_DCE4(rdev))
  atombios_set_crtc_dtd_timing(crtc, adjusted_mode);
 else if (ASIC_IS_AVIVO(rdev)) {
  if (is_tvcv)
   atombios_crtc_set_timing(crtc, adjusted_mode);
  else
   atombios_set_crtc_dtd_timing(crtc, adjusted_mode);
 } else {
  atombios_crtc_set_timing(crtc, adjusted_mode);
  if (radeon_crtc->crtc_id == 0)
   atombios_set_crtc_dtd_timing(crtc, adjusted_mode);
  radeon_legacy_atom_fixup(crtc);
 }
 atombios_crtc_set_base(crtc, x, y, old_fb);
 atombios_overscan_setup(crtc, mode, adjusted_mode);
 atombios_scaler_setup(crtc);
 radeon_cursor_reset(crtc);

 radeon_crtc->hw_mode = *adjusted_mode;

 return 0;
}
