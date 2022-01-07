
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_2__* adev; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ring* ring; } ;
struct TYPE_4__ {TYPE_1__ vce; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 long ETIMEDOUT ;
 int PAGE_SIZE ;
 long amdgpu_bo_create_reserved (TYPE_2__*,int,int ,int ,struct amdgpu_bo**,int *,int *) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 long amdgpu_vce_get_create_msg (struct amdgpu_ring*,int,struct amdgpu_bo*,int *) ;
 long amdgpu_vce_get_destroy_msg (struct amdgpu_ring*,int,int,struct dma_fence**) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;

int amdgpu_vce_ring_test_ib(struct amdgpu_ring *ring, long timeout)
{
 struct dma_fence *fence = ((void*)0);
 struct amdgpu_bo *bo = ((void*)0);
 long r;


 if (ring != &ring->adev->vce.ring[0])
  return 0;

 r = amdgpu_bo_create_reserved(ring->adev, 512, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &bo, ((void*)0), ((void*)0));
 if (r)
  return r;

 r = amdgpu_vce_get_create_msg(ring, 1, bo, ((void*)0));
 if (r)
  goto error;

 r = amdgpu_vce_get_destroy_msg(ring, 1, 1, &fence);
 if (r)
  goto error;

 r = dma_fence_wait_timeout(fence, 0, timeout);
 if (r == 0)
  r = -ETIMEDOUT;
 else if (r > 0)
  r = 0;

error:
 dma_fence_put(fence);
 amdgpu_bo_unreserve(bo);
 amdgpu_bo_unref(&bo);
 return r;
}
