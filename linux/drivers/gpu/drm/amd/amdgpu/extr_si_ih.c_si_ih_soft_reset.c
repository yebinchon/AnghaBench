
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dev; } ;


 int RREG32 (int ) ;
 int SRBM_SOFT_RESET ;
 int SRBM_SOFT_RESET__SOFT_RESET_IH_MASK ;
 int SRBM_STATUS ;
 int SRBM_STATUS__IH_BUSY_MASK ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int si_ih_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 u32 srbm_soft_reset = 0;
 u32 tmp = RREG32(SRBM_STATUS);

 if (tmp & SRBM_STATUS__IH_BUSY_MASK)
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_IH_MASK;

 if (srbm_soft_reset) {
  tmp = RREG32(SRBM_SOFT_RESET);
  tmp |= srbm_soft_reset;
  dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
  WREG32(SRBM_SOFT_RESET, tmp);
  tmp = RREG32(SRBM_SOFT_RESET);

  udelay(50);

  tmp &= ~srbm_soft_reset;
  WREG32(SRBM_SOFT_RESET, tmp);
  tmp = RREG32(SRBM_SOFT_RESET);

  udelay(50);
 }

 return 0;
}
