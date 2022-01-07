
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_instances; TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int ring; } ;


 int amdgpu_ring_fini (int *) ;

__attribute__((used)) static int sdma_v5_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++)
  amdgpu_ring_fini(&adev->sdma.instance[i].ring);

 return 0;
}
