
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_timeline {int vm; } ;
struct i915_ppgtt {int vm; } ;
struct i915_gem_context {int vm; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {int gt; TYPE_1__ drm; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int EINVAL ;
 struct intel_timeline* ERR_CAST (struct intel_timeline*) ;
 struct intel_timeline* ERR_PTR (int ) ;
 int HAS_EXECLISTS (struct drm_i915_private*) ;
 scalar_t__ HAS_FULL_PPGTT (struct drm_i915_private*) ;
 unsigned int I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE ;
 scalar_t__ IS_ERR (struct intel_timeline*) ;
 int PTR_ERR (struct intel_timeline*) ;
 int __assign_ppgtt (struct intel_timeline*,int *) ;
 int __assign_timeline (struct intel_timeline*,struct intel_timeline*) ;
 struct intel_timeline* __create_context (struct drm_i915_private*) ;
 int context_close (struct intel_timeline*) ;
 int contexts_free_first (struct drm_i915_private*) ;
 struct intel_timeline* i915_ppgtt_create (struct drm_i915_private*) ;
 int i915_vm_put (int *) ;
 struct intel_timeline* intel_timeline_create (int *,int *) ;
 int intel_timeline_put (struct intel_timeline*) ;
 int lockdep_assert_held (int *) ;
 int trace_i915_context_create (struct intel_timeline*) ;

__attribute__((used)) static struct i915_gem_context *
i915_gem_create_context(struct drm_i915_private *dev_priv, unsigned int flags)
{
 struct i915_gem_context *ctx;

 lockdep_assert_held(&dev_priv->drm.struct_mutex);

 if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE &&
     !HAS_EXECLISTS(dev_priv))
  return ERR_PTR(-EINVAL);


 contexts_free_first(dev_priv);

 ctx = __create_context(dev_priv);
 if (IS_ERR(ctx))
  return ctx;

 if (HAS_FULL_PPGTT(dev_priv)) {
  struct i915_ppgtt *ppgtt;

  ppgtt = i915_ppgtt_create(dev_priv);
  if (IS_ERR(ppgtt)) {
   DRM_DEBUG_DRIVER("PPGTT setup failed (%ld)\n",
      PTR_ERR(ppgtt));
   context_close(ctx);
   return ERR_CAST(ppgtt);
  }

  __assign_ppgtt(ctx, &ppgtt->vm);
  i915_vm_put(&ppgtt->vm);
 }

 if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
  struct intel_timeline *timeline;

  timeline = intel_timeline_create(&dev_priv->gt, ((void*)0));
  if (IS_ERR(timeline)) {
   context_close(ctx);
   return ERR_CAST(timeline);
  }

  __assign_timeline(ctx, timeline);
  intel_timeline_put(timeline);
 }

 trace_i915_context_create(ctx);

 return ctx;
}
