
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sync {int dummy; } ;
struct radeon_fence {struct radeon_device* rdev; } ;
struct radeon_device {int dummy; } ;
struct dma_resv_list {unsigned int shared_count; int * shared; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_wait (struct dma_fence*,int) ;
 struct dma_fence* dma_resv_get_excl (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_list (struct dma_resv*) ;
 int dma_resv_held (struct dma_resv*) ;
 int radeon_sync_fence (struct radeon_sync*,struct radeon_fence*) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;
 struct radeon_fence* to_radeon_fence (struct dma_fence*) ;

int radeon_sync_resv(struct radeon_device *rdev,
       struct radeon_sync *sync,
       struct dma_resv *resv,
       bool shared)
{
 struct dma_resv_list *flist;
 struct dma_fence *f;
 struct radeon_fence *fence;
 unsigned i;
 int r = 0;


 f = dma_resv_get_excl(resv);
 fence = f ? to_radeon_fence(f) : ((void*)0);
 if (fence && fence->rdev == rdev)
  radeon_sync_fence(sync, fence);
 else if (f)
  r = dma_fence_wait(f, 1);

 flist = dma_resv_get_list(resv);
 if (shared || !flist || r)
  return r;

 for (i = 0; i < flist->shared_count; ++i) {
  f = rcu_dereference_protected(flist->shared[i],
           dma_resv_held(resv));
  fence = to_radeon_fence(f);
  if (fence && fence->rdev == rdev)
   radeon_sync_fence(sync, fence);
  else
   r = dma_fence_wait(f, 1);

  if (r)
   break;
 }
 return r;
}
