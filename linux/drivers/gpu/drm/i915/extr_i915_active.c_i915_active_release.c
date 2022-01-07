
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int dummy; } ;


 int active_retire (struct i915_active*) ;
 int debug_active_assert (struct i915_active*) ;

void i915_active_release(struct i915_active *ref)
{
 debug_active_assert(ref);
 active_retire(ref);
}
