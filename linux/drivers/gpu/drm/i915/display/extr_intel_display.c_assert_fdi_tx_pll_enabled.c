
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int FDI_TX_CTL (int) ;
 int FDI_TX_PLL_ENABLE ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static void assert_fdi_tx_pll_enabled(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 u32 val;


 if (IS_GEN(dev_priv, 5))
  return;


 if (HAS_DDI(dev_priv))
  return;

 val = I915_READ(FDI_TX_CTL(pipe));
 I915_STATE_WARN(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
}
