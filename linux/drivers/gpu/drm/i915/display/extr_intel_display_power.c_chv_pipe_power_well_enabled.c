
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DP_SSC_MASK (int) ;
 int DP_SSS_MASK (int) ;
 int DP_SSS_PWR_GATE (int) ;
 int DP_SSS_PWR_ON (int) ;
 int PIPE_A ;
 int PUNIT_REG_DSPSSPM ;
 int WARN_ON (int) ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
     struct i915_power_well *power_well)
{
 enum pipe pipe = PIPE_A;
 bool enabled;
 u32 state, ctrl;

 vlv_punit_get(dev_priv);

 state = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe);




 WARN_ON(state != DP_SSS_PWR_ON(pipe) && state != DP_SSS_PWR_GATE(pipe));
 enabled = state == DP_SSS_PWR_ON(pipe);





 ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
 WARN_ON(ctrl << 16 != state);

 vlv_punit_put(dev_priv);

 return enabled;
}
