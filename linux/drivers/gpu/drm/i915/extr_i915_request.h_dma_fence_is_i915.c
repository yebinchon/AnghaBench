
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int * ops; } ;


 int i915_fence_ops ;

__attribute__((used)) static inline bool dma_fence_is_i915(const struct dma_fence *fence)
{
 return fence->ops == &i915_fence_ops;
}
