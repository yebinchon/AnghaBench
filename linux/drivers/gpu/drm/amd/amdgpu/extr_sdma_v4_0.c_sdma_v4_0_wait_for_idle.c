
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int num_instances; } ;
struct amdgpu_device {unsigned int usec_timeout; TYPE_1__ sdma; } ;


 int AMDGPU_MAX_SDMA_INSTANCES ;
 int ETIMEDOUT ;
 int RREG32_SDMA (unsigned int,int ) ;
 int SDMA0_STATUS_REG__IDLE_MASK ;
 int mmSDMA0_STATUS_REG ;
 int udelay (int) ;

__attribute__((used)) static int sdma_v4_0_wait_for_idle(void *handle)
{
 unsigned i, j;
 u32 sdma[AMDGPU_MAX_SDMA_INSTANCES];
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {
  for (j = 0; j < adev->sdma.num_instances; j++) {
   sdma[j] = RREG32_SDMA(j, mmSDMA0_STATUS_REG);
   if (!(sdma[j] & SDMA0_STATUS_REG__IDLE_MASK))
    break;
  }
  if (j == adev->sdma.num_instances)
   return 0;
  udelay(1);
 }
 return -ETIMEDOUT;
}
