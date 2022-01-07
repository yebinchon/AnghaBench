
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kgd_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
struct TYPE_3__ {scalar_t__ switch_power_profile; } ;


 int PP_SMC_POWER_PROFILE_COMPUTE ;
 int amdgpu_dpm_switch_power_profile (struct amdgpu_device*,int ,int) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_switch_power_profile (int *,int ,int) ;

void amdgpu_amdkfd_set_compute_idle(struct kgd_dev *kgd, bool idle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 if (is_support_sw_smu(adev))
  smu_switch_power_profile(&adev->smu,
      PP_SMC_POWER_PROFILE_COMPUTE,
      !idle);
 else if (adev->powerplay.pp_funcs &&
   adev->powerplay.pp_funcs->switch_power_profile)
  amdgpu_dpm_switch_power_profile(adev,
      PP_SMC_POWER_PROFILE_COMPUTE,
      !idle);
}
