
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int grbm_soft_reset; int srbm_soft_reset; } ;
struct amdgpu_device {int dev; TYPE_1__ gfx; } ;


 int GFX_CLEAR ;
 int GFX_STALL ;
 int GMCON_DEBUG ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int) ;
 int mmGMCON_DEBUG ;
 int mmGRBM_SOFT_RESET ;
 int mmSRBM_SOFT_RESET ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v8_0_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
 u32 tmp;

 if ((!adev->gfx.grbm_soft_reset) &&
     (!adev->gfx.srbm_soft_reset))
  return 0;

 grbm_soft_reset = adev->gfx.grbm_soft_reset;
 srbm_soft_reset = adev->gfx.srbm_soft_reset;

 if (grbm_soft_reset || srbm_soft_reset) {
  tmp = RREG32(mmGMCON_DEBUG);
  tmp = REG_SET_FIELD(tmp, GMCON_DEBUG, GFX_STALL, 1);
  tmp = REG_SET_FIELD(tmp, GMCON_DEBUG, GFX_CLEAR, 1);
  WREG32(mmGMCON_DEBUG, tmp);
  udelay(50);
 }

 if (grbm_soft_reset) {
  tmp = RREG32(mmGRBM_SOFT_RESET);
  tmp |= grbm_soft_reset;
  dev_info(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(mmGRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmGRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~grbm_soft_reset;
  WREG32(mmGRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmGRBM_SOFT_RESET);
 }

 if (srbm_soft_reset) {
  tmp = RREG32(mmSRBM_SOFT_RESET);
  tmp |= srbm_soft_reset;
  dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(mmSRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmSRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~srbm_soft_reset;
  WREG32(mmSRBM_SOFT_RESET, tmp);
  tmp = RREG32(mmSRBM_SOFT_RESET);
 }

 if (grbm_soft_reset || srbm_soft_reset) {
  tmp = RREG32(mmGMCON_DEBUG);
  tmp = REG_SET_FIELD(tmp, GMCON_DEBUG, GFX_STALL, 0);
  tmp = REG_SET_FIELD(tmp, GMCON_DEBUG, GFX_CLEAR, 0);
  WREG32(mmGMCON_DEBUG, tmp);
 }


 udelay(50);

 return 0;
}
