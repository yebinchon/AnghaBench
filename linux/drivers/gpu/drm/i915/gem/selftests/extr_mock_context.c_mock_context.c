
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int vm; } ;
struct i915_gem_engines {int dummy; } ;
struct i915_gem_context {int engines; int name; int mutex; int hw_id_link; int handles_vma; int engines_mutex; struct drm_i915_private* i915; int link; int ref; } ;
struct drm_i915_private {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ IS_ERR (struct i915_gem_engines*) ;
 int RCU_INIT_POINTER (int ,struct i915_gem_engines*) ;
 int __set_ppgtt (struct i915_gem_context*,int *) ;
 struct i915_gem_engines* default_engines (struct i915_gem_context*) ;
 int free_engines (int ) ;
 int i915_gem_context_pin_hw_id (struct i915_gem_context*) ;
 int i915_gem_context_put (struct i915_gem_context*) ;
 int i915_gem_context_set_closed (struct i915_gem_context*) ;
 int i915_vm_put (int *) ;
 int kfree (struct i915_gem_context*) ;
 int kref_init (int *) ;
 int kstrdup (char const*,int ) ;
 struct i915_gem_context* kzalloc (int,int ) ;
 struct i915_ppgtt* mock_ppgtt (struct drm_i915_private*,char const*) ;
 int mutex_init (int *) ;
 int rcu_access_pointer (int ) ;

struct i915_gem_context *
mock_context(struct drm_i915_private *i915,
      const char *name)
{
 struct i915_gem_context *ctx;
 struct i915_gem_engines *e;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 kref_init(&ctx->ref);
 INIT_LIST_HEAD(&ctx->link);
 ctx->i915 = i915;

 mutex_init(&ctx->engines_mutex);
 e = default_engines(ctx);
 if (IS_ERR(e))
  goto err_free;
 RCU_INIT_POINTER(ctx->engines, e);

 INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
 INIT_LIST_HEAD(&ctx->hw_id_link);
 mutex_init(&ctx->mutex);

 ret = i915_gem_context_pin_hw_id(ctx);
 if (ret < 0)
  goto err_engines;

 if (name) {
  struct i915_ppgtt *ppgtt;

  ctx->name = kstrdup(name, GFP_KERNEL);
  if (!ctx->name)
   goto err_put;

  ppgtt = mock_ppgtt(i915, name);
  if (!ppgtt)
   goto err_put;

  __set_ppgtt(ctx, &ppgtt->vm);
  i915_vm_put(&ppgtt->vm);
 }

 return ctx;

err_engines:
 free_engines(rcu_access_pointer(ctx->engines));
err_free:
 kfree(ctx);
 return ((void*)0);

err_put:
 i915_gem_context_set_closed(ctx);
 i915_gem_context_put(ctx);
 return ((void*)0);
}
