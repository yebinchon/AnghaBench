
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dma_resv_list {size_t shared_count; int * shared; } ;
struct dma_resv {int seq; int fence_excl; } ;
struct dma_fence {int dummy; } ;


 int RCU_INIT_POINTER (int ,struct dma_fence*) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_assert_held (struct dma_resv*) ;
 struct dma_fence* dma_resv_get_excl (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_list (struct dma_resv*) ;
 int dma_resv_held (struct dma_resv*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence)
{
 struct dma_fence *old_fence = dma_resv_get_excl(obj);
 struct dma_resv_list *old;
 u32 i = 0;

 dma_resv_assert_held(obj);

 old = dma_resv_get_list(obj);
 if (old)
  i = old->shared_count;

 if (fence)
  dma_fence_get(fence);

 preempt_disable();
 write_seqcount_begin(&obj->seq);

 RCU_INIT_POINTER(obj->fence_excl, fence);
 if (old)
  old->shared_count = 0;
 write_seqcount_end(&obj->seq);
 preempt_enable();


 while (i--)
  dma_fence_put(rcu_dereference_protected(old->shared[i],
      dma_resv_held(obj)));

 dma_fence_put(old_fence);
}
