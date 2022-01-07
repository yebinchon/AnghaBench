
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_rings; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int vce_v2_0_set_irq_funcs (struct amdgpu_device*) ;
 int vce_v2_0_set_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v2_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->vce.num_rings = 2;

 vce_v2_0_set_ring_funcs(adev);
 vce_v2_0_set_irq_funcs(adev);

 return 0;
}
