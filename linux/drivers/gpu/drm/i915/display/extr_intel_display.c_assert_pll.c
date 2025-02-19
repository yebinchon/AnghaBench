
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_VCO_ENABLE ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ,int ) ;
 int onoff (int) ;

void assert_pll(struct drm_i915_private *dev_priv,
  enum pipe pipe, bool state)
{
 u32 val;
 bool cur_state;

 val = I915_READ(DPLL(pipe));
 cur_state = !!(val & DPLL_VCO_ENABLE);
 I915_STATE_WARN(cur_state != state,
      "PLL state assertion failure (expected %s, current %s)\n",
   onoff(state), onoff(cur_state));
}
