
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gpu_state {int dummy; } ;
struct TYPE_2__ {int lock; struct i915_gpu_state* first_error; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;


 int IS_ERR_OR_NULL (struct i915_gpu_state*) ;
 int i915_gpu_state_get (struct i915_gpu_state*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct i915_gpu_state *
i915_first_error_state(struct drm_i915_private *i915)
{
 struct i915_gpu_state *error;

 spin_lock_irq(&i915->gpu_error.lock);
 error = i915->gpu_error.first_error;
 if (!IS_ERR_OR_NULL(error))
  i915_gpu_state_get(error);
 spin_unlock_irq(&i915->gpu_error.lock);

 return error;
}
