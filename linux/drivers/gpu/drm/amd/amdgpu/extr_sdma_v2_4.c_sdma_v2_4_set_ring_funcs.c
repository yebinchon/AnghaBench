
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;
struct TYPE_4__ {int me; int * funcs; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;


 int sdma_v2_4_ring_funcs ;

__attribute__((used)) static void sdma_v2_4_set_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  adev->sdma.instance[i].ring.funcs = &sdma_v2_4_ring_funcs;
  adev->sdma.instance[i].ring.me = i;
 }
}
