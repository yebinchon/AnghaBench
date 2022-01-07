
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_chain {struct dma_fence* fence; int prev; } ;
struct dma_fence {int refcount; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dma_fence_free (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int kref_read (int *) ;
 struct dma_fence* rcu_dereference_protected (int ,int) ;
 struct dma_fence_chain* to_dma_fence_chain (struct dma_fence*) ;

__attribute__((used)) static void dma_fence_chain_release(struct dma_fence *fence)
{
 struct dma_fence_chain *chain = to_dma_fence_chain(fence);
 struct dma_fence *prev;




 while ((prev = rcu_dereference_protected(chain->prev, 1))) {
  struct dma_fence_chain *prev_chain;

  if (kref_read(&prev->refcount) > 1)
         break;

  prev_chain = to_dma_fence_chain(prev);
  if (!prev_chain)
   break;




  chain->prev = prev_chain->prev;
  RCU_INIT_POINTER(prev_chain->prev, ((void*)0));
  dma_fence_put(prev);
 }
 dma_fence_put(prev);

 dma_fence_put(chain->fence);
 dma_fence_free(fence);
}
