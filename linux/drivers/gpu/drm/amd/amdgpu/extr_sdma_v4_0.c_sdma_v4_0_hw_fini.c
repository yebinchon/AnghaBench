
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pp_funcs; } ;
struct TYPE_6__ {int num_instances; int ecc_irq; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ powerplay; TYPE_3__ sdma; } ;
struct TYPE_4__ {scalar_t__ set_powergating_by_smu; } ;


 scalar_t__ AMDGPU_SDMA_IRQ_INSTANCE0 ;
 int AMD_IP_BLOCK_TYPE_SDMA ;
 scalar_t__ CHIP_RAVEN ;
 scalar_t__ CHIP_RENOIR ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,scalar_t__) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int sdma_v4_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v4_0_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v4_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i;

 if (amdgpu_sriov_vf(adev))
  return 0;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  amdgpu_irq_put(adev, &adev->sdma.ecc_irq,
          AMDGPU_SDMA_IRQ_INSTANCE0 + i);
 }

 sdma_v4_0_ctx_switch_enable(adev, 0);
 sdma_v4_0_enable(adev, 0);

 if ((adev->asic_type == CHIP_RAVEN && adev->powerplay.pp_funcs
   && adev->powerplay.pp_funcs->set_powergating_by_smu) ||
   adev->asic_type == CHIP_RENOIR)
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_SDMA, 1);

 return 0;
}
