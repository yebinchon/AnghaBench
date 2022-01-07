
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int CACHE_MODE_0 ;
 int DEUC ;
 int DSPCLK_GATE_D ;
 int I965_RCC_CLOCK_GATE_DISABLE ;
 int MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ;
 int MI_ARB_STATE ;
 int RAMCLK_GATE_D ;
 int RC_OP_FLUSH_ENABLE ;
 int RENCLK_GATE_D1 ;
 int RENCLK_GATE_D2 ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;
 int intel_uncore_write16 (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
 intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
 intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 intel_uncore_write16(uncore, DEUC, 0);
 intel_uncore_write(uncore,
      MI_ARB_STATE,
      _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));


 intel_uncore_write(uncore,
      CACHE_MODE_0,
      _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
}
