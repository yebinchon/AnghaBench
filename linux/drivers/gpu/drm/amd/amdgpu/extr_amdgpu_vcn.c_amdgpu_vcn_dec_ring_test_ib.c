
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;


 long ETIMEDOUT ;
 long amdgpu_vcn_dec_get_create_msg (struct amdgpu_ring*,int,int *) ;
 long amdgpu_vcn_dec_get_destroy_msg (struct amdgpu_ring*,int,struct dma_fence**) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;

int amdgpu_vcn_dec_ring_test_ib(struct amdgpu_ring *ring, long timeout)
{
 struct dma_fence *fence;
 long r;

 r = amdgpu_vcn_dec_get_create_msg(ring, 1, ((void*)0));
 if (r)
  goto error;

 r = amdgpu_vcn_dec_get_destroy_msg(ring, 1, &fence);
 if (r)
  goto error;

 r = dma_fence_wait_timeout(fence, 0, timeout);
 if (r == 0)
  r = -ETIMEDOUT;
 else if (r > 0)
  r = 0;

 dma_fence_put(fence);
error:
 return r;
}
