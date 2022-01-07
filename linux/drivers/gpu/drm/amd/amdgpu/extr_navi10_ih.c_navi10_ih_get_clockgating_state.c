
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_IH_CG ;
 int OSSSYS ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmIH_CLK_CTRL ;

__attribute__((used)) static void navi10_ih_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!RREG32_SOC15(OSSSYS, 0, mmIH_CLK_CTRL))
  *flags |= AMD_CG_SUPPORT_IH_CG;

 return;
}
