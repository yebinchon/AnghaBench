
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int flags; } ;
struct TYPE_4__ {TYPE_1__* gem_context; } ;
struct TYPE_3__ {scalar_t__ name; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 scalar_t__ test_bit (int ,int *) ;
 TYPE_2__* to_request (struct dma_fence*) ;

__attribute__((used)) static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
{
 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  return "signaled";

 return to_request(fence)->gem_context->name ?: "[i915]";
}
