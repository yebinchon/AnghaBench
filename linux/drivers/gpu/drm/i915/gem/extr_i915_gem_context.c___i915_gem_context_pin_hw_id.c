
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gem_context {int hw_id_pin_count; int hw_id_link; int hw_id; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int mutex; int hw_id_list; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;


 int GEM_BUG_ON (int) ;
 int assign_hw_id (struct drm_i915_private*,int *) ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 int i915_gem_context_is_closed (struct i915_gem_context*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __i915_gem_context_pin_hw_id(struct i915_gem_context *ctx)
{
 struct drm_i915_private *i915 = ctx->i915;
 int err = 0;

 mutex_lock(&i915->contexts.mutex);

 GEM_BUG_ON(i915_gem_context_is_closed(ctx));

 if (list_empty(&ctx->hw_id_link)) {
  GEM_BUG_ON(atomic_read(&ctx->hw_id_pin_count));

  err = assign_hw_id(i915, &ctx->hw_id);
  if (err)
   goto out_unlock;

  list_add_tail(&ctx->hw_id_link, &i915->contexts.hw_id_list);
 }

 GEM_BUG_ON(atomic_read(&ctx->hw_id_pin_count) == ~0u);
 atomic_inc(&ctx->hw_id_pin_count);

out_unlock:
 mutex_unlock(&i915->contexts.mutex);
 return err;
}
