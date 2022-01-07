
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;
struct TYPE_4__ {struct amdgpu_ring page; struct amdgpu_ring ring; } ;


 int EINVAL ;

int amdgpu_sdma_get_index_from_ring(struct amdgpu_ring *ring, uint32_t *index)
{
 struct amdgpu_device *adev = ring->adev;
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (ring == &adev->sdma.instance[i].ring ||
   ring == &adev->sdma.instance[i].page) {
   *index = i;
   return 0;
  }
 }

 return -EINVAL;
}
