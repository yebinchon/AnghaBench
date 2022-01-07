
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wm_level {int enable; scalar_t__ fbc_val; } ;
struct intel_wm_config {int num_pipes_active; } ;
struct intel_pipe_wm {int fbc_wm_enabled; struct intel_wm_level* wm; } ;
struct ilk_wm_maximums {scalar_t__ fbc; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int ilk_merge_wm_level (struct drm_i915_private*,int,struct intel_wm_level*) ;
 int ilk_validate_wm_level (int,struct ilk_wm_maximums const*,struct intel_wm_level*) ;
 int ilk_wm_max_level (struct drm_i915_private*) ;
 scalar_t__ intel_fbc_is_active (struct drm_i915_private*) ;

__attribute__((used)) static void ilk_wm_merge(struct drm_i915_private *dev_priv,
    const struct intel_wm_config *config,
    const struct ilk_wm_maximums *max,
    struct intel_pipe_wm *merged)
{
 int level, max_level = ilk_wm_max_level(dev_priv);
 int last_enabled_level = max_level;


 if ((INTEL_GEN(dev_priv) <= 6 || IS_IVYBRIDGE(dev_priv)) &&
     config->num_pipes_active > 1)
  last_enabled_level = 0;


 merged->fbc_wm_enabled = INTEL_GEN(dev_priv) >= 6;


 for (level = 1; level <= max_level; level++) {
  struct intel_wm_level *wm = &merged->wm[level];

  ilk_merge_wm_level(dev_priv, level, wm);

  if (level > last_enabled_level)
   wm->enable = 0;
  else if (!ilk_validate_wm_level(level, max, wm))

   last_enabled_level = level - 1;





  if (wm->fbc_val > max->fbc) {
   if (wm->enable)
    merged->fbc_wm_enabled = 0;
   wm->fbc_val = 0;
  }
 }







 if (IS_GEN(dev_priv, 5) && !merged->fbc_wm_enabled &&
     intel_fbc_is_active(dev_priv)) {
  for (level = 2; level <= max_level; level++) {
   struct intel_wm_level *wm = &merged->wm[level];

   wm->enable = 0;
  }
 }
}
