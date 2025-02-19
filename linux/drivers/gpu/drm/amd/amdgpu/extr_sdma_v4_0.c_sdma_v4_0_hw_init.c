
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ powerplay; } ;
struct TYPE_3__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_SDMA ;
 scalar_t__ CHIP_RAVEN ;
 scalar_t__ CHIP_RENOIR ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int sdma_v4_0_init_golden_registers (struct amdgpu_device*) ;
 int sdma_v4_0_start (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if ((adev->asic_type == CHIP_RAVEN && adev->powerplay.pp_funcs &&
   adev->powerplay.pp_funcs->set_powergating_by_smu) ||
   adev->asic_type == CHIP_RENOIR)
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_SDMA, 0);

 if (!amdgpu_sriov_vf(adev))
  sdma_v4_0_init_golden_registers(adev);

 r = sdma_v4_0_start(adev);

 return r;
}
