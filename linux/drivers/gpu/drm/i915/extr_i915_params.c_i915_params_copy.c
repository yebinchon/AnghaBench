
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_params {int dummy; } ;


 int DUP ;
 int I915_PARAMS_FOR_EACH (int ) ;

void i915_params_copy(struct i915_params *dest, const struct i915_params *src)
{
 *dest = *src;

 I915_PARAMS_FOR_EACH(DUP);

}
