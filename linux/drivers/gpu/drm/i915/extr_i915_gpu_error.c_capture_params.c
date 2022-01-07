
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_state {int params; } ;


 int i915_modparams ;
 int i915_params_copy (int *,int *) ;

__attribute__((used)) static void capture_params(struct i915_gpu_state *error)
{
 i915_params_copy(&error->params, &i915_modparams);
}
