
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int) ;
 int MEM_DISPLAY_TRICKLE_FEED_DISABLE ;
 int MEM_MODE ;
 int MI_AGPBUSY_830_MODE ;
 int MI_AGPBUSY_INT_EN ;
 int MI_STATE ;
 int RENCLK_GATE_D1 ;
 int SV_CLOCK_GATE_DISABLE ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
{
 I915_WRITE(RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);


 I915_WRITE(MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
     _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));

 I915_WRITE(MEM_MODE,
     _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
}
