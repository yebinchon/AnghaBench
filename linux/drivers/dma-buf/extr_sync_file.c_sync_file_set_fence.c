
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {struct dma_fence* fence; } ;
struct dma_fence {int dummy; } ;
struct dma_fence_array {struct dma_fence base; } ;


 int ENOMEM ;
 struct dma_fence_array* dma_fence_array_create (int,struct dma_fence**,int ,int,int) ;
 int dma_fence_context_alloc (int) ;
 int kfree (struct dma_fence**) ;

__attribute__((used)) static int sync_file_set_fence(struct sync_file *sync_file,
          struct dma_fence **fences, int num_fences)
{
 struct dma_fence_array *array;







 if (num_fences == 1) {
  sync_file->fence = fences[0];
  kfree(fences);
 } else {
  array = dma_fence_array_create(num_fences, fences,
            dma_fence_context_alloc(1),
            1, 0);
  if (!array)
   return -ENOMEM;

  sync_file->fence = &array->base;
 }

 return 0;
}
