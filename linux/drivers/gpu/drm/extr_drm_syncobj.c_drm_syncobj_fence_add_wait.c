
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syncobj_wait_entry {struct dma_fence* fence; int node; int point; } ;
struct drm_syncobj {int lock; int cb_list; int fence; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ dma_fence_chain_find_seqno (struct dma_fence**,int ) ;
 struct dma_fence* dma_fence_get (int ) ;
 struct dma_fence* dma_fence_get_stub () ;
 int dma_fence_put (struct dma_fence*) ;
 int list_add_tail (int *,int *) ;
 int rcu_dereference_protected (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void drm_syncobj_fence_add_wait(struct drm_syncobj *syncobj,
           struct syncobj_wait_entry *wait)
{
 struct dma_fence *fence;

 if (wait->fence)
  return;

 spin_lock(&syncobj->lock);




 fence = dma_fence_get(rcu_dereference_protected(syncobj->fence, 1));
 if (!fence || dma_fence_chain_find_seqno(&fence, wait->point)) {
  dma_fence_put(fence);
  list_add_tail(&wait->node, &syncobj->cb_list);
 } else if (!fence) {
  wait->fence = dma_fence_get_stub();
 } else {
  wait->fence = fence;
 }
 spin_unlock(&syncobj->lock);
}
