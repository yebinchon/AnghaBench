
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {int flags; TYPE_1__ gmc; } ;


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
 int mmSRBM_STATUS ;

__attribute__((used)) static bool gmc_v8_0_check_soft_reset(void *handle)
{
 u32 srbm_soft_reset = 0;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
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
  adev->gmc.srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->gmc.srbm_soft_reset = 0;
  return 0;
 }
}
