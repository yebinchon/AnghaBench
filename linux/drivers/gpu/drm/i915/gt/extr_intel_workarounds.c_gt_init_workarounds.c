
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 int bxt_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int cfl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int cnl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int glk_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int icl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int kbl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int skl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;
 int tgl_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;

__attribute__((used)) static void
gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 if (IS_GEN(i915, 12))
  tgl_gt_workarounds_init(i915, wal);
 else if (IS_GEN(i915, 11))
  icl_gt_workarounds_init(i915, wal);
 else if (IS_CANNONLAKE(i915))
  cnl_gt_workarounds_init(i915, wal);
 else if (IS_COFFEELAKE(i915))
  cfl_gt_workarounds_init(i915, wal);
 else if (IS_GEMINILAKE(i915))
  glk_gt_workarounds_init(i915, wal);
 else if (IS_KABYLAKE(i915))
  kbl_gt_workarounds_init(i915, wal);
 else if (IS_BROXTON(i915))
  bxt_gt_workarounds_init(i915, wal);
 else if (IS_SKYLAKE(i915))
  skl_gt_workarounds_init(i915, wal);
 else if (INTEL_GEN(i915) <= 8)
  return;
 else
  MISSING_CASE(INTEL_GEN(i915));
}
