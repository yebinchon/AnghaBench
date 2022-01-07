
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int SOFT_RESET_IH ;
 int SRBM_SOFT_RESET ;
 int SRBM_STATUS__IH_BUSY_MASK ;
 int mmSRBM_STATUS ;

__attribute__((used)) static bool tonga_ih_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 u32 tmp = RREG32(mmSRBM_STATUS);

 if (tmp & SRBM_STATUS__IH_BUSY_MASK)
  srbm_soft_reset = REG_SET_FIELD(srbm_soft_reset, SRBM_SOFT_RESET,
      SOFT_RESET_IH, 1);

 if (srbm_soft_reset) {
  adev->irq.srbm_soft_reset = srbm_soft_reset;
  return 1;
 } else {
  adev->irq.srbm_soft_reset = 0;
  return 0;
 }
}
