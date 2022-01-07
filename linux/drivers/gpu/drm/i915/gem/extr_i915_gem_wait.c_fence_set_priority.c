
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_attr {int dummy; } ;
struct dma_fence_array {int num_fences; struct dma_fence** fences; } ;
struct dma_fence {int dummy; } ;


 int __fence_set_priority (struct dma_fence*,struct i915_sched_attr const*) ;
 scalar_t__ dma_fence_is_array (struct dma_fence*) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

__attribute__((used)) static void fence_set_priority(struct dma_fence *fence,
          const struct i915_sched_attr *attr)
{

 if (dma_fence_is_array(fence)) {
  struct dma_fence_array *array = to_dma_fence_array(fence);
  int i;

  for (i = 0; i < array->num_fences; i++)
   __fence_set_priority(array->fences[i], attr);
 } else {
  __fence_set_priority(fence, attr);
 }
}
