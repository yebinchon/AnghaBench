
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int GRBM_STATUS ;
 int GUI_ACTIVE ;
 scalar_t__ REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmGRBM_STATUS ;

__attribute__((used)) static bool gfx_v10_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (REG_GET_FIELD(RREG32_SOC15(GC, 0, mmGRBM_STATUS),
    GRBM_STATUS, GUI_ACTIVE))
  return 0;
 else
  return 1;
}
