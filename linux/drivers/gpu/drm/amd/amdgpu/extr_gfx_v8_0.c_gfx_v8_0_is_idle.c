
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GRBM_STATUS ;
 int GUI_ACTIVE ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int RREG32 (int ) ;
 int mmGRBM_STATUS ;
 int mmGRBM_STATUS2 ;

__attribute__((used)) static bool gfx_v8_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (REG_GET_FIELD(RREG32(mmGRBM_STATUS), GRBM_STATUS, GUI_ACTIVE)
  || RREG32(mmGRBM_STATUS2) != 0x8)
  return 0;
 else
  return 1;
}
