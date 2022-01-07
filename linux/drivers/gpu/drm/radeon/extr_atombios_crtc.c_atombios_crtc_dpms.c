
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct radeon_crtc {int enabled; int crtc_id; } ;
struct drm_device {int num_crtcs; struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int ASIC_IS_DCE3 (struct radeon_device*) ;
 int ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;




 int atombios_blank_crtc (struct drm_crtc*,int ) ;
 int atombios_enable_crtc (struct drm_crtc*,int ) ;
 int atombios_enable_crtc_memreq (struct drm_crtc*,int ) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int radeon_crtc_load_lut (struct drm_crtc*) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

void atombios_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 switch (mode) {
 case 130:
  radeon_crtc->enabled = 1;
  atombios_enable_crtc(crtc, ATOM_ENABLE);
  if (ASIC_IS_DCE3(rdev) && !ASIC_IS_DCE6(rdev))
   atombios_enable_crtc_memreq(crtc, ATOM_ENABLE);
  atombios_blank_crtc(crtc, ATOM_DISABLE);
  if (dev->num_crtcs > radeon_crtc->crtc_id)
   drm_crtc_vblank_on(crtc);
  radeon_crtc_load_lut(crtc);
  break;
 case 129:
 case 128:
 case 131:
  if (dev->num_crtcs > radeon_crtc->crtc_id)
   drm_crtc_vblank_off(crtc);
  if (radeon_crtc->enabled)
   atombios_blank_crtc(crtc, ATOM_ENABLE);
  if (ASIC_IS_DCE3(rdev) && !ASIC_IS_DCE6(rdev))
   atombios_enable_crtc_memreq(crtc, ATOM_DISABLE);
  atombios_enable_crtc(crtc, ATOM_DISABLE);
  radeon_crtc->enabled = 0;
  break;
 }

 radeon_pm_compute_clocks(rdev);
}
