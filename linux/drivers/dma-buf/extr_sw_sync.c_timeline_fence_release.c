
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int pt_tree; } ;
struct sync_pt {int node; int link; } ;
struct dma_fence {int lock; } ;


 int dma_fence_free (struct dma_fence*) ;
 struct sync_timeline* dma_fence_parent (struct dma_fence*) ;
 struct sync_pt* dma_fence_to_sync_pt (struct dma_fence*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sync_timeline_put (struct sync_timeline*) ;

__attribute__((used)) static void timeline_fence_release(struct dma_fence *fence)
{
 struct sync_pt *pt = dma_fence_to_sync_pt(fence);
 struct sync_timeline *parent = dma_fence_parent(fence);
 unsigned long flags;

 spin_lock_irqsave(fence->lock, flags);
 if (!list_empty(&pt->link)) {
  list_del(&pt->link);
  rb_erase(&pt->node, &parent->pt_tree);
 }
 spin_unlock_irqrestore(fence->lock, flags);

 sync_timeline_put(parent);
 dma_fence_free(fence);
}
