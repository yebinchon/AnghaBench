
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct dma_fence_ops {int get_timeline_name; int get_driver_name; } ;
struct dma_fence {unsigned long flags; scalar_t__ error; void* seqno; void* context; int * lock; int cb_list; struct dma_fence_ops const* ops; int refcount; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int trace_dma_fence_init (struct dma_fence*) ;

void
dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
        spinlock_t *lock, u64 context, u64 seqno)
{
 BUG_ON(!lock);
 BUG_ON(!ops || !ops->get_driver_name || !ops->get_timeline_name);

 kref_init(&fence->refcount);
 fence->ops = ops;
 INIT_LIST_HEAD(&fence->cb_list);
 fence->lock = lock;
 fence->context = context;
 fence->seqno = seqno;
 fence->flags = 0UL;
 fence->error = 0;

 trace_dma_fence_init(fence);
}
