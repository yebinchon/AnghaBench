
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

int cnl_hdmi_pll_ref_clock(struct drm_i915_private *dev_priv)
{
 int ref_clock = dev_priv->cdclk.hw.ref;





 if (INTEL_GEN(dev_priv) >= 11 && ref_clock == 38400)
  ref_clock = 19200;

 return ref_clock;
}
