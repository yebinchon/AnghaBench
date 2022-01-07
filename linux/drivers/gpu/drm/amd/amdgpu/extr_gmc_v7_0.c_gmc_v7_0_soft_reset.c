
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int flags; int dev; } ;


 int AMD_IS_APU ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int SOFT_RESET_MC ;
 int SOFT_RESET_VMC ;
 int SRBM_SOFT_RESET ;
 int SRBM_STATUS__MCB_BUSY_MASK ;
 int SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK ;
 int SRBM_STATUS__MCC_BUSY_MASK ;
 int SRBM_STATUS__MCD_BUSY_MASK ;
 int SRBM_STATUS__VMC_BUSY_MASK ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int gmc_v7_0_mc_resume (struct amdgpu_device*) ;
 int gmc_v7_0_mc_stop (struct amdgpu_device*) ;
 scalar_t__ gmc_v7_0_wait_for_idle (void*) ;
 int mmSRBM_SOFT_RESET ;
 int mmSRBM_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int gmc_v7_0_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 u32 tmp = RREG32(mmSRBM_STATUS);

 if (tmp & SRBM_STATUS__VMC_BUSY_MASK)
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset,
      SRBM_SOFT_RESET, SOFT_RESET_VMC, 1);

 if (tmp & (SRBM_STATUS__MCB_BUSY_MASK | SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK |
     SRBM_STATUS__MCC_BUSY_MASK | SRBM_STATUS__MCD_BUSY_MASK)) {
  if (!(adev->flags & AMD_IS_APU))
   srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset,
       SRBM_SOFT_RESET, SOFT_RESET_MC, 1);
 }

 if (srbm_soft_reset) {
  gmc_v7_0_mc_stop(adev);
  if (gmc_v7_0_wait_for_idle((void *)adev)) {
   dev_warn(adev->dev, "Wait for GMC idle timed out !\n");
  }


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

  gmc_v7_0_mc_resume(adev);
  udelay(50);
 }

 return 0;
}
