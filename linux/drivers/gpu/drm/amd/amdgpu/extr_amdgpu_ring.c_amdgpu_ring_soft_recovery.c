
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_1__* funcs; TYPE_2__* adev; } ;
typedef int ktime_t ;
struct TYPE_4__ {int gpu_reset_counter; } ;
struct TYPE_3__ {int (* soft_recovery ) (struct amdgpu_ring*,unsigned int) ;} ;


 scalar_t__ amdgpu_sriov_vf (TYPE_2__*) ;
 int atomic_inc (int *) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int ktime_add_us (int ,int) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int stub1 (struct amdgpu_ring*,unsigned int) ;

bool amdgpu_ring_soft_recovery(struct amdgpu_ring *ring, unsigned int vmid,
          struct dma_fence *fence)
{
 ktime_t deadline = ktime_add_us(ktime_get(), 10000);

 if (amdgpu_sriov_vf(ring->adev) || !ring->funcs->soft_recovery || !fence)
  return 0;

 atomic_inc(&ring->adev->gpu_reset_counter);
 while (!dma_fence_is_signaled(fence) &&
        ktime_to_ns(ktime_sub(deadline, ktime_get())) > 0)
  ring->funcs->soft_recovery(ring, vmid);

 return dma_fence_is_signaled(fence);
}
