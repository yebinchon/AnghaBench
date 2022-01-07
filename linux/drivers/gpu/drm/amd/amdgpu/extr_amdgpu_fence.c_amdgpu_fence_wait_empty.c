
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {size_t num_fences_mask; struct dma_fence** fences; int sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 size_t READ_ONCE (int ) ;
 int dma_fence_get_rcu (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 struct dma_fence* rcu_dereference (struct dma_fence*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int amdgpu_fence_wait_empty(struct amdgpu_ring *ring)
{
 uint64_t seq = READ_ONCE(ring->fence_drv.sync_seq);
 struct dma_fence *fence, **ptr;
 int r;

 if (!seq)
  return 0;

 ptr = &ring->fence_drv.fences[seq & ring->fence_drv.num_fences_mask];
 rcu_read_lock();
 fence = rcu_dereference(*ptr);
 if (!fence || !dma_fence_get_rcu(fence)) {
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();

 r = dma_fence_wait(fence, 0);
 dma_fence_put(fence);
 return r;
}
