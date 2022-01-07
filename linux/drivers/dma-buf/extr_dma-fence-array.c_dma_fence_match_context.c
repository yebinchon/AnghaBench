
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dma_fence_array {unsigned int num_fences; TYPE_1__** fences; } ;
struct dma_fence {scalar_t__ context; } ;
struct TYPE_2__ {scalar_t__ context; } ;


 int dma_fence_is_array (struct dma_fence*) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

bool dma_fence_match_context(struct dma_fence *fence, u64 context)
{
 struct dma_fence_array *array = to_dma_fence_array(fence);
 unsigned i;

 if (!dma_fence_is_array(fence))
  return fence->context == context;

 for (i = 0; i < array->num_fences; i++) {
  if (array->fences[i]->context != context)
   return 0;
 }

 return 1;
}
