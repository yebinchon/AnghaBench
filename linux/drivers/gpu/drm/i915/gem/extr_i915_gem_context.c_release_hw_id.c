
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gem_context {int hw_id_link; int hw_id; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int mutex; int hw_ida; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;


 int ida_simple_remove (int *,int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void release_hw_id(struct i915_gem_context *ctx)
{
 struct drm_i915_private *i915 = ctx->i915;

 if (list_empty(&ctx->hw_id_link))
  return;

 mutex_lock(&i915->contexts.mutex);
 if (!list_empty(&ctx->hw_id_link)) {
  ida_simple_remove(&i915->contexts.hw_ida, ctx->hw_id);
  list_del_init(&ctx->hw_id_link);
 }
 mutex_unlock(&i915->contexts.mutex);
}
