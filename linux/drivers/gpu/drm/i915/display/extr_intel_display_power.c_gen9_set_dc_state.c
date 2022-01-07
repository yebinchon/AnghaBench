
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int allowed_dc_mask; int dc_state; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int DC_STATE_EN ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int DRM_ERROR (char*,int,int) ;
 int I915_READ (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int gen9_dc_mask (struct drm_i915_private*) ;
 int gen9_write_dc_state (struct drm_i915_private*,int) ;

__attribute__((used)) static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
{
 u32 val;
 u32 mask;

 if (WARN_ON_ONCE(state & ~dev_priv->csr.allowed_dc_mask))
  state &= dev_priv->csr.allowed_dc_mask;

 val = I915_READ(DC_STATE_EN);
 mask = gen9_dc_mask(dev_priv);
 DRM_DEBUG_KMS("Setting DC state from %02x to %02x\n",
        val & mask, state);


 if ((val & mask) != dev_priv->csr.dc_state)
  DRM_ERROR("DC state mismatch (0x%x -> 0x%x)\n",
     dev_priv->csr.dc_state, val & mask);

 val &= ~mask;
 val |= state;

 gen9_write_dc_state(dev_priv, val);

 dev_priv->csr.dc_state = val & mask;
}
