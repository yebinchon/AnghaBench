
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS__UVD_BUSY_MASK ;
 int mmSRBM_STATUS ;

__attribute__((used)) static bool uvd_v4_2_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return !(RREG32(mmSRBM_STATUS) & SRBM_STATUS__UVD_BUSY_MASK);
}
