
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_array {int num_pending; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

__attribute__((used)) static bool dma_fence_array_signaled(struct dma_fence *fence)
{
 struct dma_fence_array *array = to_dma_fence_array(fence);

 return atomic_read(&array->num_pending) <= 0;
}
