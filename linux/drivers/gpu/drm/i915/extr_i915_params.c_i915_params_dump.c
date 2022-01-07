
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_params {int dummy; } ;
struct drm_printer {int dummy; } ;


 int I915_PARAMS_FOR_EACH (int ) ;
 int PRINT ;

void i915_params_dump(const struct i915_params *params, struct drm_printer *p)
{

 I915_PARAMS_FOR_EACH(PRINT);

}
