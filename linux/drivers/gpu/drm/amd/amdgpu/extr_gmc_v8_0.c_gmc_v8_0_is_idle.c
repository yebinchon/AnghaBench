
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS__MCB_BUSY_MASK ;
 int SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK ;
 int SRBM_STATUS__MCC_BUSY_MASK ;
 int SRBM_STATUS__MCD_BUSY_MASK ;
 int SRBM_STATUS__VMC_BUSY_MASK ;
 int mmSRBM_STATUS ;

__attribute__((used)) static bool gmc_v8_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(mmSRBM_STATUS);

 if (tmp & (SRBM_STATUS__MCB_BUSY_MASK | SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK |
     SRBM_STATUS__MCC_BUSY_MASK | SRBM_STATUS__MCD_BUSY_MASK | SRBM_STATUS__VMC_BUSY_MASK))
  return 0;

 return 1;
}
