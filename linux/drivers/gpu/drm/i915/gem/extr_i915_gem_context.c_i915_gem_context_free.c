
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gem_context {int mutex; int link; int pid; int name; scalar_t__ timeline; int jump_whitelist; int engines_mutex; int engines; scalar_t__ vm; TYPE_2__* i915; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int GEM_BUG_ON (int) ;
 int free_engines (int ) ;
 int i915_gem_context_is_closed (struct i915_gem_context*) ;
 int i915_vm_put (scalar_t__) ;
 int intel_timeline_put (scalar_t__) ;
 int kfree (int ) ;
 int kfree_rcu (struct i915_gem_context*,int ) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_destroy (int *) ;
 int put_pid (int ) ;
 int rcu ;
 int rcu_access_pointer (int ) ;
 int release_hw_id (struct i915_gem_context*) ;

__attribute__((used)) static void i915_gem_context_free(struct i915_gem_context *ctx)
{
 lockdep_assert_held(&ctx->i915->drm.struct_mutex);
 GEM_BUG_ON(!i915_gem_context_is_closed(ctx));

 release_hw_id(ctx);
 if (ctx->vm)
  i915_vm_put(ctx->vm);

 free_engines(rcu_access_pointer(ctx->engines));
 mutex_destroy(&ctx->engines_mutex);

 kfree(ctx->jump_whitelist);

 if (ctx->timeline)
  intel_timeline_put(ctx->timeline);

 kfree(ctx->name);
 put_pid(ctx->pid);

 list_del(&ctx->link);
 mutex_destroy(&ctx->mutex);

 kfree_rcu(ctx, rcu);
}
