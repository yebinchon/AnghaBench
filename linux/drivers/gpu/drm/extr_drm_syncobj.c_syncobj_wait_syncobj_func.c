
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syncobj_wait_entry {int node; int task; struct dma_fence* fence; int point; } ;
struct drm_syncobj {int lock; int fence; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ dma_fence_chain_find_seqno (struct dma_fence**,int ) ;
 int dma_fence_get (struct dma_fence*) ;
 struct dma_fence* dma_fence_get_stub () ;
 int dma_fence_put (struct dma_fence*) ;
 int list_del_init (int *) ;
 int lockdep_is_held (int *) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void syncobj_wait_syncobj_func(struct drm_syncobj *syncobj,
          struct syncobj_wait_entry *wait)
{
 struct dma_fence *fence;


 fence = rcu_dereference_protected(syncobj->fence,
       lockdep_is_held(&syncobj->lock));
 dma_fence_get(fence);
 if (!fence || dma_fence_chain_find_seqno(&fence, wait->point)) {
  dma_fence_put(fence);
  return;
 } else if (!fence) {
  wait->fence = dma_fence_get_stub();
 } else {
  wait->fence = fence;
 }

 wake_up_process(wait->task);
 list_del_init(&wait->node);
}
