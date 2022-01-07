
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GRBM_STATUS__GUI_ACTIVE_MASK ;
 int RREG32 (int ) ;
 int mmGRBM_STATUS ;

__attribute__((used)) static bool gfx_v7_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (RREG32(mmGRBM_STATUS) & GRBM_STATUS__GUI_ACTIVE_MASK)
  return 0;
 else
  return 1;
}
