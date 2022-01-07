
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int SDMA0_STATUS_REG__IDLE_MASK ;
 int mmSDMA0_STATUS_REG ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sdma_v5_0_wait_for_idle(void *handle)
{
 unsigned i;
 u32 sdma0, sdma1;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {
  sdma0 = RREG32(sdma_v5_0_get_reg_offset(adev, 0, mmSDMA0_STATUS_REG));
  sdma1 = RREG32(sdma_v5_0_get_reg_offset(adev, 1, mmSDMA0_STATUS_REG));

  if (sdma0 & sdma1 & SDMA0_STATUS_REG__IDLE_MASK)
   return 0;
  udelay(1);
 }
 return -ETIMEDOUT;
}
