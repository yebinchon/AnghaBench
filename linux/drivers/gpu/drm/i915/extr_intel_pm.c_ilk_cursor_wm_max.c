
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wm_config {int num_pipes_active; } ;
struct drm_i915_private {int dummy; } ;


 unsigned int ilk_cursor_wm_reg_max (struct drm_i915_private const*,int) ;

__attribute__((used)) static unsigned int ilk_cursor_wm_max(const struct drm_i915_private *dev_priv,
          int level,
          const struct intel_wm_config *config)
{

 if (level > 0 && config->num_pipes_active > 1)
  return 64;


 return ilk_cursor_wm_reg_max(dev_priv, level);
}
