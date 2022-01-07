
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int i915_request_enable_breadcrumb (int ) ;
 int to_request (struct dma_fence*) ;

__attribute__((used)) static bool i915_fence_enable_signaling(struct dma_fence *fence)
{
 return i915_request_enable_breadcrumb(to_request(fence));
}
