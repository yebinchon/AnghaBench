
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum skl_power_gate { ____Placeholder_skl_power_gate } skl_power_gate ;


 int SKL_FUSE_PG_DIST_STATUS (int) ;
 int SKL_FUSE_STATUS ;
 int WARN_ON (int ) ;
 int intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
        enum skl_power_gate pg)
{

 WARN_ON(intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
          SKL_FUSE_PG_DIST_STATUS(pg), 1));
}
