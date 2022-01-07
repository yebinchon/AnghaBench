
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int ggtt; } ;


 scalar_t__ INTEL_PPGTT (struct drm_i915_private*) ;
 scalar_t__ INTEL_PPGTT_ALIASING ;
 int cleanup_init_ggtt (int *) ;
 int init_aliasing_ppgtt (int *) ;
 int init_ggtt (int *) ;

int i915_init_ggtt(struct drm_i915_private *i915)
{
 int ret;

 ret = init_ggtt(&i915->ggtt);
 if (ret)
  return ret;

 if (INTEL_PPGTT(i915) == INTEL_PPGTT_ALIASING) {
  ret = init_aliasing_ppgtt(&i915->ggtt);
  if (ret)
   cleanup_init_ggtt(&i915->ggtt);
 }

 return 0;
}
