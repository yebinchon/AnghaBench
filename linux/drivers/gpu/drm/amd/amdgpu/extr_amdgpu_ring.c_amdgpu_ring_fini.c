
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready; } ;
struct amdgpu_ring {size_t idx; TYPE_2__* adev; scalar_t__ me; int * vmid_wait; int ring; int gpu_addr; int ring_obj; int fence_offs; int cond_exe_offs; int wptr_offs; int rptr_offs; TYPE_1__ sched; } ;
struct TYPE_4__ {int ** rings; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int amdgpu_debugfs_ring_fini (struct amdgpu_ring*) ;
 int amdgpu_device_wb_free (TYPE_2__*,int ) ;
 int dma_fence_put (int *) ;

void amdgpu_ring_fini(struct amdgpu_ring *ring)
{
 ring->sched.ready = 0;


 if (!(ring->adev) || !(ring->adev->rings[ring->idx]))
  return;

 amdgpu_device_wb_free(ring->adev, ring->rptr_offs);
 amdgpu_device_wb_free(ring->adev, ring->wptr_offs);

 amdgpu_device_wb_free(ring->adev, ring->cond_exe_offs);
 amdgpu_device_wb_free(ring->adev, ring->fence_offs);

 amdgpu_bo_free_kernel(&ring->ring_obj,
         &ring->gpu_addr,
         (void **)&ring->ring);

 amdgpu_debugfs_ring_fini(ring);

 dma_fence_put(ring->vmid_wait);
 ring->vmid_wait = ((void*)0);
 ring->me = 0;

 ring->adev->rings[ring->idx] = ((void*)0);
}
