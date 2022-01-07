
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; int * shared; int flags; } ;
struct dma_resv {int seq; int fence; int fence_excl; } ;
struct dma_fence {unsigned int shared_count; int * shared; int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int ENOMEM ;
 int RCU_INIT_POINTER (int ,struct dma_resv_list*) ;
 int dma_fence_get_rcu (struct dma_resv_list*) ;
 struct dma_resv_list* dma_fence_get_rcu_safe (int *) ;
 scalar_t__ dma_fence_is_signaled (struct dma_resv_list*) ;
 int dma_fence_put (struct dma_resv_list*) ;
 int dma_resv_assert_held (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_excl (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_get_list (struct dma_resv*) ;
 struct dma_resv_list* dma_resv_list_alloc (unsigned int) ;
 int dma_resv_list_free (struct dma_resv_list*) ;
 int kfree (struct dma_resv_list*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_assign_pointer (int ,struct dma_resv_list*) ;
 struct dma_resv_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src)
{
 struct dma_resv_list *src_list, *dst_list;
 struct dma_fence *old, *new;
 unsigned i;

 dma_resv_assert_held(dst);

 rcu_read_lock();
 src_list = rcu_dereference(src->fence);

retry:
 if (src_list) {
  unsigned shared_count = src_list->shared_count;

  rcu_read_unlock();

  dst_list = dma_resv_list_alloc(shared_count);
  if (!dst_list)
   return -ENOMEM;

  rcu_read_lock();
  src_list = rcu_dereference(src->fence);
  if (!src_list || src_list->shared_count > shared_count) {
   kfree(dst_list);
   goto retry;
  }

  dst_list->shared_count = 0;
  for (i = 0; i < src_list->shared_count; ++i) {
   struct dma_fence *fence;

   fence = rcu_dereference(src_list->shared[i]);
   if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
         &fence->flags))
    continue;

   if (!dma_fence_get_rcu(fence)) {
    dma_resv_list_free(dst_list);
    src_list = rcu_dereference(src->fence);
    goto retry;
   }

   if (dma_fence_is_signaled(fence)) {
    dma_fence_put(fence);
    continue;
   }

   rcu_assign_pointer(dst_list->shared[dst_list->shared_count++], fence);
  }
 } else {
  dst_list = ((void*)0);
 }

 new = dma_fence_get_rcu_safe(&src->fence_excl);
 rcu_read_unlock();

 src_list = dma_resv_get_list(dst);
 old = dma_resv_get_excl(dst);

 preempt_disable();
 write_seqcount_begin(&dst->seq);

 RCU_INIT_POINTER(dst->fence_excl, new);
 RCU_INIT_POINTER(dst->fence, dst_list);
 write_seqcount_end(&dst->seq);
 preempt_enable();

 dma_resv_list_free(src_list);
 dma_fence_put(old);

 return 0;
}
