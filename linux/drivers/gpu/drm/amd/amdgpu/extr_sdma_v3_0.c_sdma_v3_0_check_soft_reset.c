
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int RREG32 (int ) ;
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK ;
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK ;
 int SRBM_STATUS2__SDMA1_BUSY_MASK ;
 int SRBM_STATUS2__SDMA_BUSY_MASK ;
 int mmSRBM_STATUS2 ;

__attribute__((used)) static bool sdma_v3_0_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 u32 tmp = RREG32(mmSRBM_STATUS2);

 if ((tmp & SRBM_STATUS2__SDMA_BUSY_MASK) ||
     (tmp & SRBM_STATUS2__SDMA1_BUSY_MASK)) {
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK;
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK;
 }

 if (srbm_soft_reset) {
  adev->sdma.srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->sdma.srbm_soft_reset = 0;
  return 0;
 }
}
