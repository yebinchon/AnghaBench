
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_power_well {int dummy; } ;
struct TYPE_2__ {int allowed_dc_mask; int dmc_payload; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int DC_STATE_EN_UPTO_DC5 ;
 int DC_STATE_EN_UPTO_DC6 ;
 int gen9_enable_dc5 (struct drm_i915_private*) ;
 int skl_enable_dc6 (struct drm_i915_private*) ;

__attribute__((used)) static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{
 if (!dev_priv->csr.dmc_payload)
  return;

 if (dev_priv->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
  skl_enable_dc6(dev_priv);
 else if (dev_priv->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
  gen9_enable_dc5(dev_priv);
}
