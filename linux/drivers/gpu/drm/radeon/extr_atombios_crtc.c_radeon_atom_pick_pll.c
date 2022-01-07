
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_encoder_atom_dig {int linkb; } ;
struct radeon_encoder {scalar_t__ encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_2__ {scalar_t__ dp_extclk; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ clock; } ;
struct radeon_crtc {int crtc_id; int encoder; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE41 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE61 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE8 (struct radeon_device*) ;
 int ATOM_DCPLL ;
 int ATOM_PPLL0 ;
 int ATOM_PPLL1 ;
 int ATOM_PPLL2 ;
 int ATOM_PPLL_INVALID ;
 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int DRM_ERROR (char*) ;
 scalar_t__ ENCODER_MODE_IS_DP (int ) ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_UNIPHY ;
 int atombios_get_encoder_mode (int ) ;
 int radeon_get_pll_use_mask (struct drm_crtc*) ;
 int radeon_get_shared_dp_ppll (struct drm_crtc*) ;
 int radeon_get_shared_nondp_ppll (struct drm_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

__attribute__((used)) static int radeon_atom_pick_pll(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder =
  to_radeon_encoder(radeon_crtc->encoder);
 u32 pll_in_use;
 int pll;

 if (ASIC_IS_DCE8(rdev)) {
  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(radeon_crtc->encoder))) {
   if (rdev->clock.dp_extclk)

    return ATOM_PPLL_INVALID;
   else {

    pll = radeon_get_shared_dp_ppll(crtc);
    if (pll != ATOM_PPLL_INVALID)
     return pll;
   }
  } else {

   pll = radeon_get_shared_nondp_ppll(crtc);
   if (pll != ATOM_PPLL_INVALID)
    return pll;
  }

  if ((rdev->family == CHIP_KABINI) ||
      (rdev->family == CHIP_MULLINS)) {

   pll_in_use = radeon_get_pll_use_mask(crtc);
   if (!(pll_in_use & (1 << ATOM_PPLL2)))
    return ATOM_PPLL2;
   if (!(pll_in_use & (1 << ATOM_PPLL1)))
    return ATOM_PPLL1;
   DRM_ERROR("unable to allocate a PPLL\n");
   return ATOM_PPLL_INVALID;
  } else {

   pll_in_use = radeon_get_pll_use_mask(crtc);
   if (!(pll_in_use & (1 << ATOM_PPLL2)))
    return ATOM_PPLL2;
   if (!(pll_in_use & (1 << ATOM_PPLL1)))
    return ATOM_PPLL1;
   if (!(pll_in_use & (1 << ATOM_PPLL0)))
    return ATOM_PPLL0;
   DRM_ERROR("unable to allocate a PPLL\n");
   return ATOM_PPLL_INVALID;
  }
 } else if (ASIC_IS_DCE61(rdev)) {
  struct radeon_encoder_atom_dig *dig =
   radeon_encoder->enc_priv;

  if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_UNIPHY) &&
      (dig->linkb == 0))

   return ATOM_PPLL2;
  else if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(radeon_crtc->encoder))) {

   if (rdev->clock.dp_extclk)

    return ATOM_PPLL_INVALID;
   else {

    pll = radeon_get_shared_dp_ppll(crtc);
    if (pll != ATOM_PPLL_INVALID)
     return pll;
   }
  } else {

   pll = radeon_get_shared_nondp_ppll(crtc);
   if (pll != ATOM_PPLL_INVALID)
    return pll;
  }

  pll_in_use = radeon_get_pll_use_mask(crtc);
  if (!(pll_in_use & (1 << ATOM_PPLL0)))
   return ATOM_PPLL0;
  if (!(pll_in_use & (1 << ATOM_PPLL1)))
   return ATOM_PPLL1;
  DRM_ERROR("unable to allocate a PPLL\n");
  return ATOM_PPLL_INVALID;
 } else if (ASIC_IS_DCE41(rdev)) {

  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(radeon_crtc->encoder))) {
   if (rdev->clock.dp_extclk)

    return ATOM_PPLL_INVALID;
  }
  pll_in_use = radeon_get_pll_use_mask(crtc);
  if (!(pll_in_use & (1 << ATOM_PPLL1)))
   return ATOM_PPLL1;
  if (!(pll_in_use & (1 << ATOM_PPLL2)))
   return ATOM_PPLL2;
  DRM_ERROR("unable to allocate a PPLL\n");
  return ATOM_PPLL_INVALID;
 } else if (ASIC_IS_DCE4(rdev)) {
  if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(radeon_crtc->encoder))) {
   if (rdev->clock.dp_extclk)

    return ATOM_PPLL_INVALID;
   else if (ASIC_IS_DCE6(rdev))

    return ATOM_PPLL0;
   else if (ASIC_IS_DCE5(rdev))

    return ATOM_DCPLL;
   else {

    pll = radeon_get_shared_dp_ppll(crtc);
    if (pll != ATOM_PPLL_INVALID)
     return pll;
   }
  } else {

   pll = radeon_get_shared_nondp_ppll(crtc);
   if (pll != ATOM_PPLL_INVALID)
    return pll;
  }

  pll_in_use = radeon_get_pll_use_mask(crtc);
  if (!(pll_in_use & (1 << ATOM_PPLL1)))
   return ATOM_PPLL1;
  if (!(pll_in_use & (1 << ATOM_PPLL2)))
   return ATOM_PPLL2;
  DRM_ERROR("unable to allocate a PPLL\n");
  return ATOM_PPLL_INVALID;
 } else {
  return radeon_crtc->crtc_id;
 }
}
