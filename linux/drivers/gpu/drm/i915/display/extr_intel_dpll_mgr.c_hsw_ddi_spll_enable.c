
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spll; } ;
struct TYPE_4__ {TYPE_1__ hw_state; } ;
struct intel_shared_dpll {TYPE_2__ state; } ;
struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int SPLL_CTL ;
 int udelay (int) ;

__attribute__((used)) static void hsw_ddi_spll_enable(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 I915_WRITE(SPLL_CTL, pll->state.hw_state.spll);
 POSTING_READ(SPLL_CTL);
 udelay(20);
}
