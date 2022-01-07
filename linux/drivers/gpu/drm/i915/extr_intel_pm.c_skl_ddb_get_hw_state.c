
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_ddb_allocation {int enabled_slices; } ;
struct drm_i915_private {int dummy; } ;


 int intel_enabled_dbuf_slices_num (struct drm_i915_private*) ;

void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
     struct skl_ddb_allocation *ddb )
{
 ddb->enabled_slices = intel_enabled_dbuf_slices_num(dev_priv);
}
