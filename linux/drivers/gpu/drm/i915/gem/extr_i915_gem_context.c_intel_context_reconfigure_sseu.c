
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_sseu {int dummy; } ;
struct intel_context {TYPE_1__* engine; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;


 int __intel_context_reconfigure_sseu (struct intel_context*,struct intel_sseu) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
intel_context_reconfigure_sseu(struct intel_context *ce, struct intel_sseu sseu)
{
 struct drm_i915_private *i915 = ce->engine->i915;
 int ret;

 ret = mutex_lock_interruptible(&i915->drm.struct_mutex);
 if (ret)
  return ret;

 ret = __intel_context_reconfigure_sseu(ce, sseu);

 mutex_unlock(&i915->drm.struct_mutex);

 return ret;
}
