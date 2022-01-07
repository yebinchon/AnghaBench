
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_2__ {int id; } ;


 int BXT_PORT_PLL_ENABLE (int) ;
 int DRM_ERROR (char*,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PORT_PLL_ENABLE ;
 int PORT_PLL_POWER_ENABLE ;
 int PORT_PLL_POWER_STATE ;
 int POSTING_READ (int ) ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll)
{
 enum port port = (enum port)pll->info->id;
 u32 temp;

 temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
 temp &= ~PORT_PLL_ENABLE;
 I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
 POSTING_READ(BXT_PORT_PLL_ENABLE(port));

 if (IS_GEMINILAKE(dev_priv)) {
  temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
  temp &= ~PORT_PLL_POWER_ENABLE;
  I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);

  if (wait_for_us(!(I915_READ(BXT_PORT_PLL_ENABLE(port)) &
    PORT_PLL_POWER_STATE), 200))
   DRM_ERROR("Power state not reset for PLL:%d\n", port);
 }
}
