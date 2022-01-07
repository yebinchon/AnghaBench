
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dc_state; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int DC_STATE_EN ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int I915_READ (int ) ;
 int gen9_dc_mask (struct drm_i915_private*) ;

__attribute__((used)) static void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(DC_STATE_EN) & gen9_dc_mask(dev_priv);

 DRM_DEBUG_KMS("Resetting DC state tracking from %02x to %02x\n",
        dev_priv->csr.dc_state, val);
 dev_priv->csr.dc_state = val;
}
