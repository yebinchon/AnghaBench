
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int pg_flags; TYPE_2__ powerplay; } ;
struct TYPE_3__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_GMC ;
 int AMD_PG_SUPPORT_MMHUB ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

void mmhub_v1_0_update_power_gating(struct amdgpu_device *adev,
    bool enable)
{
 if (amdgpu_sriov_vf(adev))
  return;

 if (enable && adev->pg_flags & AMD_PG_SUPPORT_MMHUB) {
  if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->set_powergating_by_smu)
   amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_GMC, 1);

 }
}
