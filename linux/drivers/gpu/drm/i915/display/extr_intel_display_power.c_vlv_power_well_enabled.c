
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; } ;
struct TYPE_4__ {TYPE_1__ vlv; } ;


 int PUNIT_PWRGT_MASK (int) ;
 int PUNIT_PWRGT_PWR_GATE (int) ;
 int PUNIT_PWRGT_PWR_ON (int) ;
 int PUNIT_REG_PWRGT_CTRL ;
 int PUNIT_REG_PWRGT_STATUS ;
 int WARN_ON (int) ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
       struct i915_power_well *power_well)
{
 int pw_idx = power_well->desc->vlv.idx;
 bool enabled = 0;
 u32 mask;
 u32 state;
 u32 ctrl;

 mask = PUNIT_PWRGT_MASK(pw_idx);
 ctrl = PUNIT_PWRGT_PWR_ON(pw_idx);

 vlv_punit_get(dev_priv);

 state = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask;




 WARN_ON(state != PUNIT_PWRGT_PWR_ON(pw_idx) &&
  state != PUNIT_PWRGT_PWR_GATE(pw_idx));
 if (state == ctrl)
  enabled = 1;





 ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
 WARN_ON(ctrl != state);

 vlv_punit_put(dev_priv);

 return enabled;
}
