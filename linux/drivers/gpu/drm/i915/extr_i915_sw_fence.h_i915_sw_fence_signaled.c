
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int pending; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool i915_sw_fence_signaled(const struct i915_sw_fence *fence)
{
 return atomic_read(&fence->pending) <= 0;
}
