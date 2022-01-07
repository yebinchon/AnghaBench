
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_type; int irq_src; int initialized; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;
struct amdgpu_device {struct amdgpu_ring** rings; } ;


 int AMDGPU_MAX_RINGS ;
 int amdgpu_fence_driver_force_completion (struct amdgpu_ring*) ;
 int amdgpu_fence_wait_empty (struct amdgpu_ring*) ;
 int amdgpu_irq_put (struct amdgpu_device*,int ,int ) ;

void amdgpu_fence_driver_suspend(struct amdgpu_device *adev)
{
 int i, r;

 for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
  struct amdgpu_ring *ring = adev->rings[i];
  if (!ring || !ring->fence_drv.initialized)
   continue;


  r = amdgpu_fence_wait_empty(ring);
  if (r) {

   amdgpu_fence_driver_force_completion(ring);
  }


  amdgpu_irq_put(adev, ring->fence_drv.irq_src,
          ring->fence_drv.irq_type);
 }
}
