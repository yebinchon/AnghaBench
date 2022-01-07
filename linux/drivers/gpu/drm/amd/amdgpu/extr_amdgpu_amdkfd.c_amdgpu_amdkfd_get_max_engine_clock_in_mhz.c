
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ pp_funcs; } ;
struct TYPE_3__ {int default_sclk; } ;
struct amdgpu_device {TYPE_2__ powerplay; TYPE_1__ clock; } ;


 int amdgpu_dpm_get_sclk (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

uint32_t amdgpu_amdkfd_get_max_engine_clock_in_mhz(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;


 if (amdgpu_sriov_vf(adev))
  return adev->clock.default_sclk / 100;
 else if (adev->powerplay.pp_funcs)
  return amdgpu_dpm_get_sclk(adev, 0) / 100;
 else
  return 100;
}
