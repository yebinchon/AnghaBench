
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {struct dma_fence* fence; } ;
struct dma_fence_array {int num_fences; struct dma_fence** fences; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ dma_fence_is_array (struct dma_fence*) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

__attribute__((used)) static struct dma_fence **get_fences(struct sync_file *sync_file,
         int *num_fences)
{
 if (dma_fence_is_array(sync_file->fence)) {
  struct dma_fence_array *array = to_dma_fence_array(sync_file->fence);

  *num_fences = array->num_fences;
  return array->fences;
 }

 *num_fences = 1;
 return &sync_file->fence;
}
