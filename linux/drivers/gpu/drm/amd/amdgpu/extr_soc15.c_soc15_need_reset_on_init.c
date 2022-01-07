
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int MP0 ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int amdgpu_passthrough (struct amdgpu_device*) ;
 int mmMP0_SMN_C2PMSG_81 ;

__attribute__((used)) static bool soc15_need_reset_on_init(struct amdgpu_device *adev)
{
 u32 sol_reg;




 if (!amdgpu_passthrough(adev))
  return 0;

 if (adev->flags & AMD_IS_APU)
  return 0;




 sol_reg = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_81);
 if (sol_reg)
  return 1;

 return 0;
}
