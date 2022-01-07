
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_array {unsigned int num_fences; int * fences; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_free (struct dma_fence*) ;
 int dma_fence_put (int ) ;
 int kfree (int *) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

__attribute__((used)) static void dma_fence_array_release(struct dma_fence *fence)
{
 struct dma_fence_array *array = to_dma_fence_array(fence);
 unsigned i;

 for (i = 0; i < array->num_fences; ++i)
  dma_fence_put(array->fences[i]);

 kfree(array->fences);
 dma_fence_free(fence);
}
