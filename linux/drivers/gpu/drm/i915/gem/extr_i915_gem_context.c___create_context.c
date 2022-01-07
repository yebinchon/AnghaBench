
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gem_engines {int dummy; } ;
struct TYPE_4__ {int priority; } ;
struct i915_gem_context {scalar_t__ jump_whitelist_cmds; int * jump_whitelist; scalar_t__* hang_timestamp; int remap_slice; int hw_id_link; int handles_vma; int engines; int engines_mutex; int mutex; TYPE_2__ sched; struct drm_i915_private* i915; int link; int ref; } ;
struct TYPE_3__ {int list; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;


 int ALL_L3_SLICES (struct drm_i915_private*) ;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ CONTEXT_FAST_HANG_JIFFIES ;
 int ENOMEM ;
 struct i915_gem_context* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I915_PRIORITY_NORMAL ;
 int I915_USER_PRIORITY (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ IS_ERR (struct i915_gem_engines*) ;
 int PTR_ERR (struct i915_gem_engines*) ;
 int RCU_INIT_POINTER (int ,struct i915_gem_engines*) ;
 struct i915_gem_engines* default_engines (struct i915_gem_context*) ;
 int i915_gem_context_set_bannable (struct i915_gem_context*) ;
 int i915_gem_context_set_recoverable (struct i915_gem_context*) ;
 scalar_t__ jiffies ;
 int kfree (struct i915_gem_context*) ;
 int kref_init (int *) ;
 struct i915_gem_context* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct i915_gem_context *
__create_context(struct drm_i915_private *i915)
{
 struct i915_gem_context *ctx;
 struct i915_gem_engines *e;
 int err;
 int i;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 kref_init(&ctx->ref);
 list_add_tail(&ctx->link, &i915->contexts.list);
 ctx->i915 = i915;
 ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
 mutex_init(&ctx->mutex);

 mutex_init(&ctx->engines_mutex);
 e = default_engines(ctx);
 if (IS_ERR(e)) {
  err = PTR_ERR(e);
  goto err_free;
 }
 RCU_INIT_POINTER(ctx->engines, e);

 INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
 INIT_LIST_HEAD(&ctx->hw_id_link);




 ctx->remap_slice = ALL_L3_SLICES(i915);

 i915_gem_context_set_bannable(ctx);
 i915_gem_context_set_recoverable(ctx);

 for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
  ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;

 ctx->jump_whitelist = ((void*)0);
 ctx->jump_whitelist_cmds = 0;

 return ctx;

err_free:
 kfree(ctx);
 return ERR_PTR(err);
}
