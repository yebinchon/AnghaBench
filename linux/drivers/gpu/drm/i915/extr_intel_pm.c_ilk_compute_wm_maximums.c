
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wm_config {int dummy; } ;
struct ilk_wm_maximums {int fbc; int cur; void* spr; void* pri; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_ddb_partitioning { ____Placeholder_intel_ddb_partitioning } intel_ddb_partitioning ;


 int ilk_cursor_wm_max (struct drm_i915_private const*,int,struct intel_wm_config const*) ;
 int ilk_fbc_wm_reg_max (struct drm_i915_private const*) ;
 void* ilk_plane_wm_max (struct drm_i915_private const*,int,struct intel_wm_config const*,int,int) ;

__attribute__((used)) static void ilk_compute_wm_maximums(const struct drm_i915_private *dev_priv,
        int level,
        const struct intel_wm_config *config,
        enum intel_ddb_partitioning ddb_partitioning,
        struct ilk_wm_maximums *max)
{
 max->pri = ilk_plane_wm_max(dev_priv, level, config, ddb_partitioning, 0);
 max->spr = ilk_plane_wm_max(dev_priv, level, config, ddb_partitioning, 1);
 max->cur = ilk_cursor_wm_max(dev_priv, level, config);
 max->fbc = ilk_fbc_wm_reg_max(dev_priv);
}
