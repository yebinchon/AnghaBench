
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int SRBM_STATUS__UVD_BUSY_MASK ;
 int mmSRBM_STATUS ;

__attribute__((used)) static int uvd_v5_0_wait_for_idle(void *handle)
{
 unsigned i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {
  if (!(RREG32(mmSRBM_STATUS) & SRBM_STATUS__UVD_BUSY_MASK))
   return 0;
 }
 return -ETIMEDOUT;
}
