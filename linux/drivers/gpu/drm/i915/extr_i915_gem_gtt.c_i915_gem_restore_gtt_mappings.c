
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int ggtt; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int ggtt_restore_mappings (int *) ;
 int setup_private_pat (struct drm_i915_private*) ;

void i915_gem_restore_gtt_mappings(struct drm_i915_private *i915)
{
 ggtt_restore_mappings(&i915->ggtt);

 if (INTEL_GEN(i915) >= 8)
  setup_private_pat(i915);
}
