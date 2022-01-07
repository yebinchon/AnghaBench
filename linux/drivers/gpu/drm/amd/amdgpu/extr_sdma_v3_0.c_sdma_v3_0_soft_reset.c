
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {int dev; TYPE_1__ sdma; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int) ;
 int mmSRBM_SOFT_RESET ;
 int udelay (int) ;

__attribute__((used)) static int sdma_v3_0_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 srbm_soft_reset = 0;
 u32 tmp;

 if (!adev->sdma.srbm_soft_reset)
  return 0;

 srbm_soft_reset = adev->sdma.srbm_soft_reset;

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
