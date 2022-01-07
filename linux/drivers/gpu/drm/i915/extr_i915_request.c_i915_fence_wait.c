
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int I915_WAIT_PRIORITY ;
 long i915_request_wait (int ,int,long) ;
 int to_request (struct dma_fence*) ;

__attribute__((used)) static signed long i915_fence_wait(struct dma_fence *fence,
       bool interruptible,
       signed long timeout)
{
 return i915_request_wait(to_request(fence),
     interruptible | I915_WAIT_PRIORITY,
     timeout);
}
