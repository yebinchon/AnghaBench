
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {int dev; TYPE_2__ uvd; } ;
struct TYPE_3__ {scalar_t__ srbm_soft_reset; } ;


 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int dev_info (int ,char*,scalar_t__) ;
 int mmSRBM_SOFT_RESET ;
 int udelay (int) ;

__attribute__((used)) static int uvd_v6_0_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset;

 if (!adev->uvd.inst->srbm_soft_reset)
  return 0;
 srbm_soft_reset = adev->uvd.inst->srbm_soft_reset;

 if (srbm_soft_reset) {
  u32 tmp;

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
