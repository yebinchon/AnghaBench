
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {scalar_t__ rawclk_freq; } ;


 int CBR1_VLV ;
 int DIV_ROUND_CLOSEST (scalar_t__,int) ;
 int DPOUNIT_CLOCK_GATE_DISABLE ;
 int DSPCLK_GATE_D ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ;
 int MI_ARB_VLV ;
 int RAWCLK_FREQ_VLV ;
 int VRHUNIT_CLOCK_GATE_DISABLE ;
 int WARN_ON (int) ;

__attribute__((used)) static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
{
 u32 val;







 val = I915_READ(DSPCLK_GATE_D);
 val &= DPOUNIT_CLOCK_GATE_DISABLE;
 val |= VRHUNIT_CLOCK_GATE_DISABLE;
 I915_WRITE(DSPCLK_GATE_D, val);




 I915_WRITE(MI_ARB_VLV, MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
 I915_WRITE(CBR1_VLV, 0);

 WARN_ON(dev_priv->rawclk_freq == 0);

 I915_WRITE(RAWCLK_FREQ_VLV,
     DIV_ROUND_CLOSEST(dev_priv->rawclk_freq, 1000));
}
