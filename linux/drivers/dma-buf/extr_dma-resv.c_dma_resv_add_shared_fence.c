
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; unsigned int shared_max; int * shared; } ;
struct dma_resv {int seq; } ;
struct dma_fence {scalar_t__ context; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (int ,struct dma_fence*) ;
 int dma_fence_get (struct dma_fence*) ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_assert_held (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_list (struct dma_resv*) ;
 int dma_resv_held (struct dma_resv*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;
 int smp_store_mb (unsigned int,unsigned int) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *fence)
{
 struct dma_resv_list *fobj;
 struct dma_fence *old;
 unsigned int i, count;

 dma_fence_get(fence);

 dma_resv_assert_held(obj);

 fobj = dma_resv_get_list(obj);
 count = fobj->shared_count;

 preempt_disable();
 write_seqcount_begin(&obj->seq);

 for (i = 0; i < count; ++i) {

  old = rcu_dereference_protected(fobj->shared[i],
      dma_resv_held(obj));
  if (old->context == fence->context ||
      dma_fence_is_signaled(old))
   goto replace;
 }

 BUG_ON(fobj->shared_count >= fobj->shared_max);
 old = ((void*)0);
 count++;

replace:
 RCU_INIT_POINTER(fobj->shared[i], fence);

 smp_store_mb(fobj->shared_count, count);

 write_seqcount_end(&obj->seq);
 preempt_enable();
 dma_fence_put(old);
}
