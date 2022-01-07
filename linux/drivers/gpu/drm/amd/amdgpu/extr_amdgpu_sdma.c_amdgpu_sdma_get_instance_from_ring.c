
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_sdma_instance {struct amdgpu_ring page; struct amdgpu_ring ring; } ;
struct TYPE_2__ {int num_instances; struct amdgpu_sdma_instance* instance; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;



struct amdgpu_sdma_instance *amdgpu_sdma_get_instance_from_ring(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++)
  if (ring == &adev->sdma.instance[i].ring ||
      ring == &adev->sdma.instance[i].page)
   return &adev->sdma.instance[i];

 return ((void*)0);
}
