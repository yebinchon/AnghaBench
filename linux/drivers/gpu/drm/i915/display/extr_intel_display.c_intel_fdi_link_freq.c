
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {int port_clock; } ;
struct drm_i915_private {int fdi_pll_freq; } ;


 scalar_t__ HAS_DDI (struct drm_i915_private*) ;

__attribute__((used)) static inline u32
intel_fdi_link_freq(struct drm_i915_private *dev_priv,
      const struct intel_crtc_state *pipe_config)
{
 if (HAS_DDI(dev_priv))
  return pipe_config->port_clock;
 else
  return dev_priv->fdi_pll_freq;
}
