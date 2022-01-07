
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; int * shared; } ;
struct dma_resv {int seq; int fence; int fence_excl; } ;
struct dma_fence {int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int dma_fence_get_rcu (struct dma_fence*) ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

long dma_resv_wait_timeout_rcu(struct dma_resv *obj,
          bool wait_all, bool intr,
          unsigned long timeout)
{
 struct dma_fence *fence;
 unsigned seq, shared_count;
 long ret = timeout ? timeout : 1;
 int i;

retry:
 shared_count = 0;
 seq = read_seqcount_begin(&obj->seq);
 rcu_read_lock();
 i = -1;

 fence = rcu_dereference(obj->fence_excl);
 if (fence && !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
  if (!dma_fence_get_rcu(fence))
   goto unlock_retry;

  if (dma_fence_is_signaled(fence)) {
   dma_fence_put(fence);
   fence = ((void*)0);
  }

 } else {
  fence = ((void*)0);
 }

 if (wait_all) {
  struct dma_resv_list *fobj = rcu_dereference(obj->fence);

  if (fobj)
   shared_count = fobj->shared_count;

  for (i = 0; !fence && i < shared_count; ++i) {
   struct dma_fence *lfence = rcu_dereference(fobj->shared[i]);

   if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
         &lfence->flags))
    continue;

   if (!dma_fence_get_rcu(lfence))
    goto unlock_retry;

   if (dma_fence_is_signaled(lfence)) {
    dma_fence_put(lfence);
    continue;
   }

   fence = lfence;
   break;
  }
 }

 rcu_read_unlock();
 if (fence) {
  if (read_seqcount_retry(&obj->seq, seq)) {
   dma_fence_put(fence);
   goto retry;
  }

  ret = dma_fence_wait_timeout(fence, intr, ret);
  dma_fence_put(fence);
  if (ret > 0 && wait_all && (i + 1 < shared_count))
   goto retry;
 }
 return ret;

unlock_retry:
 rcu_read_unlock();
 goto retry;
}
