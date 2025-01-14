
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_encoder_atom_dig {int linkb; } ;
struct amdgpu_encoder {int encoder_id; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct TYPE_2__ {scalar_t__ dp_extclk; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ clock; } ;
struct amdgpu_crtc {int encoder; } ;


 int ATOM_COMBOPHY_PLL0 ;
 int ATOM_COMBOPHY_PLL1 ;
 int ATOM_COMBOPHY_PLL2 ;
 int ATOM_COMBOPHY_PLL3 ;
 int ATOM_COMBOPHY_PLL4 ;
 int ATOM_COMBOPHY_PLL5 ;
 int ATOM_DP_DTO ;
 int ATOM_PPLL0 ;
 int ATOM_PPLL1 ;
 int ATOM_PPLL2 ;
 int ATOM_PPLL_INVALID ;
 scalar_t__ CHIP_CARRIZO ;
 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_POLARIS11 ;
 scalar_t__ CHIP_POLARIS12 ;
 scalar_t__ CHIP_STONEY ;
 scalar_t__ CHIP_VEGAM ;
 int DRM_ERROR (char*,...) ;
 scalar_t__ ENCODER_MODE_IS_DP (int ) ;



 int amdgpu_atombios_encoder_get_encoder_mode (int ) ;
 int amdgpu_pll_get_shared_dp_ppll (struct drm_crtc*) ;
 int amdgpu_pll_get_shared_nondp_ppll (struct drm_crtc*) ;
 int amdgpu_pll_get_use_mask (struct drm_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (int ) ;

__attribute__((used)) static u32 dce_v11_0_pick_pll(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 u32 pll_in_use;
 int pll;

 if ((adev->asic_type == CHIP_POLARIS10) ||
     (adev->asic_type == CHIP_POLARIS11) ||
     (adev->asic_type == CHIP_POLARIS12) ||
     (adev->asic_type == CHIP_VEGAM)) {
  struct amdgpu_encoder *amdgpu_encoder =
   to_amdgpu_encoder(amdgpu_crtc->encoder);
  struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;

  if (ENCODER_MODE_IS_DP(amdgpu_atombios_encoder_get_encoder_mode(amdgpu_crtc->encoder)))
   return ATOM_DP_DTO;

  switch (amdgpu_encoder->encoder_id) {
  case 130:
   if (dig->linkb)
    return ATOM_COMBOPHY_PLL1;
   else
    return ATOM_COMBOPHY_PLL0;
   break;
  case 129:
   if (dig->linkb)
    return ATOM_COMBOPHY_PLL3;
   else
    return ATOM_COMBOPHY_PLL2;
   break;
  case 128:
   if (dig->linkb)
    return ATOM_COMBOPHY_PLL5;
   else
    return ATOM_COMBOPHY_PLL4;
   break;
  default:
   DRM_ERROR("invalid encoder_id: 0x%x\n", amdgpu_encoder->encoder_id);
   return ATOM_PPLL_INVALID;
  }
 }

 if (ENCODER_MODE_IS_DP(amdgpu_atombios_encoder_get_encoder_mode(amdgpu_crtc->encoder))) {
  if (adev->clock.dp_extclk)

   return ATOM_PPLL_INVALID;
  else {

   pll = amdgpu_pll_get_shared_dp_ppll(crtc);
   if (pll != ATOM_PPLL_INVALID)
    return pll;
  }
 } else {

  pll = amdgpu_pll_get_shared_nondp_ppll(crtc);
  if (pll != ATOM_PPLL_INVALID)
   return pll;
 }


 pll_in_use = amdgpu_pll_get_use_mask(crtc);
 if (adev->asic_type == CHIP_CARRIZO || adev->asic_type == CHIP_STONEY) {
  if (!(pll_in_use & (1 << ATOM_PPLL1)))
   return ATOM_PPLL1;
  if (!(pll_in_use & (1 << ATOM_PPLL0)))
   return ATOM_PPLL0;
  DRM_ERROR("unable to allocate a PPLL\n");
  return ATOM_PPLL_INVALID;
 } else {
  if (!(pll_in_use & (1 << ATOM_PPLL2)))
   return ATOM_PPLL2;
  if (!(pll_in_use & (1 << ATOM_PPLL1)))
   return ATOM_PPLL1;
  if (!(pll_in_use & (1 << ATOM_PPLL0)))
   return ATOM_PPLL0;
  DRM_ERROR("unable to allocate a PPLL\n");
  return ATOM_PPLL_INVALID;
 }
 return ATOM_PPLL_INVALID;
}
