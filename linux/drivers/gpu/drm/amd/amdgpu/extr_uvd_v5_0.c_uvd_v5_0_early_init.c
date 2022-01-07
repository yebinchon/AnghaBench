
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_uvd_inst; } ;
struct amdgpu_device {TYPE_1__ uvd; } ;


 int uvd_v5_0_set_irq_funcs (struct amdgpu_device*) ;
 int uvd_v5_0_set_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v5_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 adev->uvd.num_uvd_inst = 1;

 uvd_v5_0_set_ring_funcs(adev);
 uvd_v5_0_set_irq_funcs(adev);

 return 0;
}
