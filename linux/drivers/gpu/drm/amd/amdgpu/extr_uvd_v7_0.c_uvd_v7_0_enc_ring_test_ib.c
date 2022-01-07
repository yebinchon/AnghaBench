
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_ring {int adev; } ;
struct amdgpu_bo {int dummy; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 long ETIMEDOUT ;
 int PAGE_SIZE ;
 long amdgpu_bo_create_reserved (int ,int,int ,int ,struct amdgpu_bo**,int *,int *) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;
 long uvd_v7_0_enc_get_create_msg (struct amdgpu_ring*,int,struct amdgpu_bo*,int *) ;
 long uvd_v7_0_enc_get_destroy_msg (struct amdgpu_ring*,int,struct amdgpu_bo*,struct dma_fence**) ;

__attribute__((used)) static int uvd_v7_0_enc_ring_test_ib(struct amdgpu_ring *ring, long timeout)
{
 struct dma_fence *fence = ((void*)0);
 struct amdgpu_bo *bo = ((void*)0);
 long r;

 r = amdgpu_bo_create_reserved(ring->adev, 128 * 1024, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &bo, ((void*)0), ((void*)0));
 if (r)
  return r;

 r = uvd_v7_0_enc_get_create_msg(ring, 1, bo, ((void*)0));
 if (r)
  goto error;

 r = uvd_v7_0_enc_get_destroy_msg(ring, 1, bo, &fence);
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
