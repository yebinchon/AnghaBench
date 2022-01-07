
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int error; } ;


 int cmpxchg (int *,int ,int) ;

__attribute__((used)) static inline void
i915_sw_fence_set_error_once(struct i915_sw_fence *fence, int error)
{
 cmpxchg(&fence->error, 0, error);
}
