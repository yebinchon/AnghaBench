
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS2__VCE_BUSY_MASK ;
 int mmSRBM_STATUS2 ;

__attribute__((used)) static bool vce_v2_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return !(RREG32(mmSRBM_STATUS2) & SRBM_STATUS2__VCE_BUSY_MASK);
}
