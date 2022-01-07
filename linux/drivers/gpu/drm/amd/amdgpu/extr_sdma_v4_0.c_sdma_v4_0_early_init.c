
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_instances; int has_page_queue; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ sdma; } ;


 scalar_t__ CHIP_ARCTURUS ;
 scalar_t__ CHIP_RAVEN ;
 scalar_t__ CHIP_RENOIR ;
 scalar_t__ CHIP_VEGA10 ;
 int DRM_ERROR (char*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 scalar_t__ sdma_v4_0_fw_support_paging_queue (struct amdgpu_device*) ;
 int sdma_v4_0_init_microcode (struct amdgpu_device*) ;
 int sdma_v4_0_set_buffer_funcs (struct amdgpu_device*) ;
 int sdma_v4_0_set_irq_funcs (struct amdgpu_device*) ;
 int sdma_v4_0_set_ring_funcs (struct amdgpu_device*) ;
 int sdma_v4_0_set_vm_pte_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 if (adev->asic_type == CHIP_RAVEN || adev->asic_type == CHIP_RENOIR)
  adev->sdma.num_instances = 1;
 else if (adev->asic_type == CHIP_ARCTURUS)
  adev->sdma.num_instances = 8;
 else
  adev->sdma.num_instances = 2;

 r = sdma_v4_0_init_microcode(adev);
 if (r) {
  DRM_ERROR("Failed to load sdma firmware!\n");
  return r;
 }


 if ((adev->asic_type == CHIP_VEGA10) && amdgpu_sriov_vf((adev)))
  adev->sdma.has_page_queue = 0;
 else if (sdma_v4_0_fw_support_paging_queue(adev))
  adev->sdma.has_page_queue = 1;

 sdma_v4_0_set_ring_funcs(adev);
 sdma_v4_0_set_buffer_funcs(adev);
 sdma_v4_0_set_vm_pte_funcs(adev);
 sdma_v4_0_set_irq_funcs(adev);

 return 0;
}
