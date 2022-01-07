
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int name; struct intel_context* kernel_context; } ;
struct intel_context {int active; } ;
struct i915_gem_context {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct intel_context*) ;
 int PTR_ERR (struct intel_context*) ;
 int __remote_sync (struct intel_context*,struct intel_context*) ;
 scalar_t__ i915_active_is_idle (int *) ;
 struct intel_context* intel_context_create (struct i915_gem_context*,struct intel_engine_cs*) ;
 int intel_context_put (struct intel_context*) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int __live_remote_context(struct intel_engine_cs *engine,
     struct i915_gem_context *fixme)
{
 struct intel_context *local, *remote;
 int pass;
 int err;
 remote = intel_context_create(fixme, engine);
 if (IS_ERR(remote))
  return PTR_ERR(remote);

 local = intel_context_create(fixme, engine);
 if (IS_ERR(local)) {
  err = PTR_ERR(local);
  goto err_remote;
 }

 for (pass = 0; pass <= 2; pass++) {
  err = __remote_sync(local, remote);
  if (err)
   break;

  err = __remote_sync(engine->kernel_context, remote);
  if (err)
   break;

  if (i915_active_is_idle(&remote->active)) {
   pr_err("remote context is not active; expected idle-barrier (%s pass %d)\n",
          engine->name, pass);
   err = -EINVAL;
   break;
  }
 }

 intel_context_put(local);
err_remote:
 intel_context_put(remote);
 return err;
}
