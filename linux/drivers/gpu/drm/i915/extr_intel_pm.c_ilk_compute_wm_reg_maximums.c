
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilk_wm_maximums {int fbc; int cur; void* spr; void* pri; } ;
struct drm_i915_private {int dummy; } ;


 int ilk_cursor_wm_reg_max (struct drm_i915_private const*,int) ;
 int ilk_fbc_wm_reg_max (struct drm_i915_private const*) ;
 void* ilk_plane_wm_reg_max (struct drm_i915_private const*,int,int) ;

__attribute__((used)) static void ilk_compute_wm_reg_maximums(const struct drm_i915_private *dev_priv,
     int level,
     struct ilk_wm_maximums *max)
{
 max->pri = ilk_plane_wm_reg_max(dev_priv, level, 0);
 max->spr = ilk_plane_wm_reg_max(dev_priv, level, 1);
 max->cur = ilk_cursor_wm_reg_max(dev_priv, level);
 max->fbc = ilk_fbc_wm_reg_max(dev_priv);
}
