
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_chain {int prev; struct dma_fence* fence; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* cmpxchg (void**,void*,void*) ;
 struct dma_fence* dma_fence_chain_get_prev (struct dma_fence_chain*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence_chain* to_dma_fence_chain (struct dma_fence*) ;

struct dma_fence *dma_fence_chain_walk(struct dma_fence *fence)
{
 struct dma_fence_chain *chain, *prev_chain;
 struct dma_fence *prev, *replacement, *tmp;

 chain = to_dma_fence_chain(fence);
 if (!chain) {
  dma_fence_put(fence);
  return ((void*)0);
 }

 while ((prev = dma_fence_chain_get_prev(chain))) {

  prev_chain = to_dma_fence_chain(prev);
  if (prev_chain) {
   if (!dma_fence_is_signaled(prev_chain->fence))
    break;

   replacement = dma_fence_chain_get_prev(prev_chain);
  } else {
   if (!dma_fence_is_signaled(prev))
    break;

   replacement = ((void*)0);
  }

  tmp = cmpxchg((void **)&chain->prev, (void *)prev, (void *)replacement);
  if (tmp == prev)
   dma_fence_put(tmp);
  else
   dma_fence_put(replacement);
  dma_fence_put(prev);
 }

 dma_fence_put(fence);
 return prev;
}
