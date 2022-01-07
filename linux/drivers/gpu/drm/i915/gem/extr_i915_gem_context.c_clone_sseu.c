
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int sseu; TYPE_1__* engine; } ;
struct i915_gem_engines {unsigned long num_engines; struct intel_context** engines; } ;
struct i915_gem_context {struct i915_gem_engines* engines; } ;
struct TYPE_2__ {scalar_t__ class; } ;


 int EINVAL ;
 struct i915_gem_engines* i915_gem_context_lock_engines (struct i915_gem_context*) ;
 int i915_gem_context_unlock_engines (struct i915_gem_context*) ;
 int intel_context_lock_pinned (struct intel_context*) ;
 int intel_context_unlock_pinned (struct intel_context*) ;

__attribute__((used)) static int clone_sseu(struct i915_gem_context *dst,
        struct i915_gem_context *src)
{
 struct i915_gem_engines *e = i915_gem_context_lock_engines(src);
 struct i915_gem_engines *clone;
 unsigned long n;
 int err;

 clone = dst->engines;
 if (e->num_engines != clone->num_engines) {
  err = -EINVAL;
  goto unlock;
 }

 for (n = 0; n < e->num_engines; n++) {
  struct intel_context *ce = e->engines[n];

  if (clone->engines[n]->engine->class != ce->engine->class) {

   err = -EINVAL;
   goto unlock;
  }


  err = intel_context_lock_pinned(ce);
  if (err)
   goto unlock;

  clone->engines[n]->sseu = ce->sseu;
  intel_context_unlock_pinned(ce);
 }

 err = 0;
unlock:
 i915_gem_context_unlock_engines(src);
 return err;
}
