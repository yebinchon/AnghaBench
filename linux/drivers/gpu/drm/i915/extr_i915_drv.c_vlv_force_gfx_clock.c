
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int VLV_GFX_CLK_FORCE_ON_BIT ;
 int VLV_GFX_CLK_STATUS_BIT ;
 int VLV_GTLC_SURVIVABILITY_REG ;
 int intel_wait_for_register (int *,int ,int ,int ,int) ;

int vlv_force_gfx_clock(struct drm_i915_private *dev_priv, bool force_on)
{
 u32 val;
 int err;

 val = I915_READ(VLV_GTLC_SURVIVABILITY_REG);
 val &= ~VLV_GFX_CLK_FORCE_ON_BIT;
 if (force_on)
  val |= VLV_GFX_CLK_FORCE_ON_BIT;
 I915_WRITE(VLV_GTLC_SURVIVABILITY_REG, val);

 if (!force_on)
  return 0;

 err = intel_wait_for_register(&dev_priv->uncore,
          VLV_GTLC_SURVIVABILITY_REG,
          VLV_GFX_CLK_STATUS_BIT,
          VLV_GFX_CLK_STATUS_BIT,
          20);
 if (err)
  DRM_ERROR("timeout waiting for GFX clock force-on (%08x)\n",
     I915_READ(VLV_GTLC_SURVIVABILITY_REG));

 return err;
}
