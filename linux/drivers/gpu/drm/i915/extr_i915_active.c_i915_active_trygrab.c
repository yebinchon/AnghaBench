
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int count; int flags; } ;


 int I915_ACTIVE_GRAB_BIT ;
 int __active_ungrab (struct i915_active*) ;
 int atomic_add_unless (int *,int,int ) ;
 int debug_active_assert (struct i915_active*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

bool i915_active_trygrab(struct i915_active *ref)
{
 debug_active_assert(ref);

 if (test_and_set_bit(I915_ACTIVE_GRAB_BIT, &ref->flags))
  return 0;

 if (!atomic_add_unless(&ref->count, 1, 0)) {
  __active_ungrab(ref);
  return 0;
 }

 return 1;
}
