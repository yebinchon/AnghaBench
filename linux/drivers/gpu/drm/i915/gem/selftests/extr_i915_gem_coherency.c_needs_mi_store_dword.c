
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int * engine; int gt; } ;


 int HAS_ENGINE (struct drm_i915_private*,size_t) ;
 size_t RCS0 ;
 int intel_engine_can_store_dword (int ) ;
 scalar_t__ intel_gt_is_wedged (int *) ;

__attribute__((used)) static bool needs_mi_store_dword(struct drm_i915_private *i915)
{
 if (intel_gt_is_wedged(&i915->gt))
  return 0;

 if (!HAS_ENGINE(i915, RCS0))
  return 0;

 return intel_engine_can_store_dword(i915->engine[RCS0]);
}
