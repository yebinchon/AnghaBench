
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int I915_PRIORITY_NORMAL ;
 struct i915_gem_context* i915_gem_context_create_kernel (struct drm_i915_private*,int ) ;

struct i915_gem_context *
kernel_context(struct drm_i915_private *i915)
{
 return i915_gem_context_create_kernel(i915, I915_PRIORITY_NORMAL);
}
