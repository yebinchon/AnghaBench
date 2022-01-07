
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int flags; } ;


 int I915_ACTIVE_GRAB_BIT ;
 int clear_and_wake_up_bit (int ,int *) ;

__attribute__((used)) static void __active_ungrab(struct i915_active *ref)
{
 clear_and_wake_up_bit(I915_ACTIVE_GRAB_BIT, &ref->flags);
}
