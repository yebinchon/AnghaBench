
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
struct TYPE_3__ {int (* set_powergating_by_smu ) (int ,int,int) ;} ;
 int is_support_sw_smu (struct amdgpu_device*) ;
 int smu_dpm_set_power_gate (int *,int,int) ;
 int stub1 (int ,int,int) ;
 int stub2 (int ,int,int) ;

int amdgpu_dpm_set_powergating_by_smu(struct amdgpu_device *adev, uint32_t block_type, bool gate)
{
 int ret = 0;
 bool swsmu = is_support_sw_smu(adev);

 switch (block_type) {
 case 133:
 case 130:
 case 128:
 case 129:
 case 131:
  if (swsmu)
   ret = smu_dpm_set_power_gate(&adev->smu, block_type, gate);
  else
   ret = ((adev)->powerplay.pp_funcs->set_powergating_by_smu(
    (adev)->powerplay.pp_handle, block_type, gate));
  break;
 case 132:
 case 134:
  ret = ((adev)->powerplay.pp_funcs->set_powergating_by_smu(
    (adev)->powerplay.pp_handle, block_type, gate));
  break;
 default:
  break;
 }

 return ret;
}
