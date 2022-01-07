
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int asic_type; TYPE_1__ sdma; } ;



 int SDMA_MAX_INSTANCE ;
 int sdma_v3_0_set_buffer_funcs (struct amdgpu_device*) ;
 int sdma_v3_0_set_irq_funcs (struct amdgpu_device*) ;
 int sdma_v3_0_set_ring_funcs (struct amdgpu_device*) ;
 int sdma_v3_0_set_vm_pte_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v3_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 switch (adev->asic_type) {
 case 128:
  adev->sdma.num_instances = 1;
  break;
 default:
  adev->sdma.num_instances = SDMA_MAX_INSTANCE;
  break;
 }

 sdma_v3_0_set_ring_funcs(adev);
 sdma_v3_0_set_buffer_funcs(adev);
 sdma_v3_0_set_vm_pte_funcs(adev);
 sdma_v3_0_set_irq_funcs(adev);

 return 0;
}
