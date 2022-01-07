
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_state {int params; } ;


 int i915_params_free (int *) ;

__attribute__((used)) static void cleanup_params(struct i915_gpu_state *error)
{
 i915_params_free(&error->params);
}
