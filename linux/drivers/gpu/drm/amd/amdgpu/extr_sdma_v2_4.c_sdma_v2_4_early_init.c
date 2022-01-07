
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int SDMA_MAX_INSTANCE ;
 int sdma_v2_4_set_buffer_funcs (struct amdgpu_device*) ;
 int sdma_v2_4_set_irq_funcs (struct amdgpu_device*) ;
 int sdma_v2_4_set_ring_funcs (struct amdgpu_device*) ;
 int sdma_v2_4_set_vm_pte_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v2_4_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->sdma.num_instances = SDMA_MAX_INSTANCE;

 sdma_v2_4_set_ring_funcs(adev);
 sdma_v2_4_set_buffer_funcs(adev);
 sdma_v2_4_set_vm_pte_funcs(adev);
 sdma_v2_4_set_irq_funcs(adev);

 return 0;
}
