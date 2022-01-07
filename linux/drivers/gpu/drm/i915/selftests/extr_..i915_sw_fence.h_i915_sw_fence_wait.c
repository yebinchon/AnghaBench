
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int wait; } ;


 int i915_sw_fence_done (struct i915_sw_fence*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static inline void i915_sw_fence_wait(struct i915_sw_fence *fence)
{
 wait_event(fence->wait, i915_sw_fence_done(fence));
}
