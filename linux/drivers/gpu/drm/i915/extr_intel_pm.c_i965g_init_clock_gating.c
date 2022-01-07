
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CACHE_MODE_0 ;
 int I915_WRITE (int ,int) ;
 int I965_FBC_CLOCK_GATE_DISABLE ;
 int I965_ISC_CLOCK_GATE_DISABLE ;
 int I965_RCC_CLOCK_GATE_DISABLE ;
 int I965_RCPB_CLOCK_GATE_DISABLE ;
 int I965_RCZ_CLOCK_GATE_DISABLE ;
 int MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ;
 int MI_ARB_STATE ;
 int RC_OP_FLUSH_ENABLE ;
 int RENCLK_GATE_D1 ;
 int RENCLK_GATE_D2 ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
{
 I915_WRITE(RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
     I965_RCC_CLOCK_GATE_DISABLE |
     I965_RCPB_CLOCK_GATE_DISABLE |
     I965_ISC_CLOCK_GATE_DISABLE |
     I965_FBC_CLOCK_GATE_DISABLE);
 I915_WRITE(RENCLK_GATE_D2, 0);
 I915_WRITE(MI_ARB_STATE,
     _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));


 I915_WRITE(CACHE_MODE_0, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
}
