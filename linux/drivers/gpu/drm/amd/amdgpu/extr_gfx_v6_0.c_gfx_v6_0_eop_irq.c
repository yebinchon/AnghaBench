
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_iv_entry {int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int * compute_ring; int * gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int gfx_v6_0_eop_irq(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       struct amdgpu_iv_entry *entry)
{
 switch (entry->ring_id) {
 case 0:
  amdgpu_fence_process(&adev->gfx.gfx_ring[0]);
  break;
 case 1:
 case 2:
  amdgpu_fence_process(&adev->gfx.compute_ring[entry->ring_id - 1]);
  break;
 default:
  break;
 }
 return 0;
}
