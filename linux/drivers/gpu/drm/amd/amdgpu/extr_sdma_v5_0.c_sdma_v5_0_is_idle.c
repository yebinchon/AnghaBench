
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 scalar_t__ RREG32 (int ) ;
 scalar_t__ SDMA0_STATUS_REG__IDLE_MASK ;
 int mmSDMA0_STATUS_REG ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,scalar_t__,int ) ;

__attribute__((used)) static bool sdma_v5_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  u32 tmp = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_STATUS_REG));

  if (!(tmp & SDMA0_STATUS_REG__IDLE_MASK))
   return 0;
 }

 return 1;
}
