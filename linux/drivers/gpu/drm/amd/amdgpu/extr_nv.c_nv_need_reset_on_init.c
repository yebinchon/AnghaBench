
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int MP0 ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int mmMP0_SMN_C2PMSG_81 ;

__attribute__((used)) static bool nv_need_reset_on_init(struct amdgpu_device *adev)
{
 return 0;
}
