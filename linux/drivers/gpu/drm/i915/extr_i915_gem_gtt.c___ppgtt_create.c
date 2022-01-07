
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 struct i915_ppgtt* gen6_ppgtt_create (struct drm_i915_private*) ;
 struct i915_ppgtt* gen8_ppgtt_create (struct drm_i915_private*) ;

__attribute__((used)) static struct i915_ppgtt *
__ppgtt_create(struct drm_i915_private *i915)
{
 if (INTEL_GEN(i915) < 8)
  return gen6_ppgtt_create(i915);
 else
  return gen8_ppgtt_create(i915);
}
