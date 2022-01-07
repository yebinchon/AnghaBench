
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int flags; } ;


 int GEM_BUG_ON (int) ;
 int I915_ACTIVE_GRAB_BIT ;
 int __active_ungrab (struct i915_active*) ;
 int active_retire (struct i915_active*) ;
 int test_bit (int ,int *) ;

void i915_active_ungrab(struct i915_active *ref)
{
 GEM_BUG_ON(!test_bit(I915_ACTIVE_GRAB_BIT, &ref->flags));

 active_retire(ref);
 __active_ungrab(ref);
}
