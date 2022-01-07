
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DP_A ;
 int DP_PLL_ENABLE ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ,int ) ;
 int onoff (int) ;

__attribute__((used)) static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
{
 bool cur_state = I915_READ(DP_A) & DP_PLL_ENABLE;

 I915_STATE_WARN(cur_state != state,
   "eDP PLL state assertion failure (expected %s, current %s)\n",
   onoff(state), onoff(cur_state));
}
