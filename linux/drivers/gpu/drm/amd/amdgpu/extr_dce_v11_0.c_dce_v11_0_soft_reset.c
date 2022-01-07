
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dev; } ;


 int RREG32 (int ) ;
 int SRBM_SOFT_RESET__SOFT_RESET_DC_MASK ;
 int WREG32 (int ,int) ;
 scalar_t__ dce_v11_0_is_display_hung (struct amdgpu_device*) ;
 int dev_info (int ,char*,int) ;
 int mmSRBM_SOFT_RESET ;
 int udelay (int) ;

__attribute__((used)) static int dce_v11_0_soft_reset(void *handle)
{
 u32 srbm_soft_reset = 0, tmp;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (dce_v11_0_is_display_hung(adev))
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_DC_MASK;

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


  udelay(50);
 }
 return 0;
}
