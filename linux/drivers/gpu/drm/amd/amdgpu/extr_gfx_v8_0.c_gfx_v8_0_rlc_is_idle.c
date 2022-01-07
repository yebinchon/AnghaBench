
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmGRBM_STATUS2 ;

__attribute__((used)) static bool gfx_v8_0_rlc_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (RREG32(mmGRBM_STATUS2) != 0x8)
  return 0;
 else
  return 1;
}
