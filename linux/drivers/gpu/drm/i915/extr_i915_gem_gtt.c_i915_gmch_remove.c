
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_address_space {int dummy; } ;


 int intel_gmch_remove () ;

__attribute__((used)) static void i915_gmch_remove(struct i915_address_space *vm)
{
 intel_gmch_remove();
}
