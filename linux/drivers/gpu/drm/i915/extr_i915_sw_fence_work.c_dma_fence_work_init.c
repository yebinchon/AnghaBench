
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_work_ops {int dummy; } ;
struct dma_fence_work {struct dma_fence_work_ops const* ops; int work; int chain; int lock; int dma; } ;


 int INIT_WORK (int *,int ) ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 int fence_notify ;
 int fence_ops ;
 int fence_work ;
 int i915_sw_fence_init (int *,int ) ;
 int spin_lock_init (int *) ;

void dma_fence_work_init(struct dma_fence_work *f,
    const struct dma_fence_work_ops *ops)
{
 spin_lock_init(&f->lock);
 dma_fence_init(&f->dma, &fence_ops, &f->lock, 0, 0);
 i915_sw_fence_init(&f->chain, fence_notify);
 INIT_WORK(&f->work, fence_work);

 f->ops = ops;
}
