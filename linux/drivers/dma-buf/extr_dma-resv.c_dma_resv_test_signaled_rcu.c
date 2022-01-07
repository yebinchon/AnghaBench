
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; int * shared; } ;
struct dma_resv {int seq; int fence_excl; int fence; } ;
struct dma_fence {int dummy; } ;


 int dma_resv_test_signaled_single (struct dma_fence*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

bool dma_resv_test_signaled_rcu(struct dma_resv *obj, bool test_all)
{
 unsigned seq, shared_count;
 int ret;

 rcu_read_lock();
retry:
 ret = 1;
 shared_count = 0;
 seq = read_seqcount_begin(&obj->seq);

 if (test_all) {
  unsigned i;

  struct dma_resv_list *fobj = rcu_dereference(obj->fence);

  if (fobj)
   shared_count = fobj->shared_count;

  for (i = 0; i < shared_count; ++i) {
   struct dma_fence *fence = rcu_dereference(fobj->shared[i]);

   ret = dma_resv_test_signaled_single(fence);
   if (ret < 0)
    goto retry;
   else if (!ret)
    break;
  }

  if (read_seqcount_retry(&obj->seq, seq))
   goto retry;
 }

 if (!shared_count) {
  struct dma_fence *fence_excl = rcu_dereference(obj->fence_excl);

  if (fence_excl) {
   ret = dma_resv_test_signaled_single(fence_excl);
   if (ret < 0)
    goto retry;

   if (read_seqcount_retry(&obj->seq, seq))
    goto retry;
  }
 }

 rcu_read_unlock();
 return ret;
}
