
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_lvds_pps {int t4; scalar_t__ divider; scalar_t__ tx; scalar_t__ t3; scalar_t__ t5; scalar_t__ t1_t2; scalar_t__ port; scalar_t__ powerdown_on_reset; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (int ,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PANEL_LIGHT_OFF_DELAY_MASK ;
 int PANEL_LIGHT_ON_DELAY_MASK ;
 int PANEL_PORT_SELECT_MASK ;
 int PANEL_POWER_CYCLE_DELAY_MASK ;
 int PANEL_POWER_DOWN_DELAY_MASK ;
 int PANEL_POWER_RESET ;
 int PANEL_POWER_UP_DELAY_MASK ;
 int PANEL_UNLOCK_MASK ;
 int PANEL_UNLOCK_REGS ;
 int PP_CONTROL (int ) ;
 int PP_DIVISOR (int ) ;
 int PP_OFF_DELAYS (int ) ;
 int PP_ON_DELAYS (int ) ;
 int PP_REFERENCE_DIVIDER_MASK ;
 int REG_FIELD_PREP (int ,scalar_t__) ;
 int WARN_ON (int) ;

__attribute__((used)) static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
       struct intel_lvds_pps *pps)
{
 u32 val;

 val = I915_READ(PP_CONTROL(0));
 WARN_ON((val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
 if (pps->powerdown_on_reset)
  val |= PANEL_POWER_RESET;
 I915_WRITE(PP_CONTROL(0), val);

 I915_WRITE(PP_ON_DELAYS(0),
     REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
     REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
     REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));

 I915_WRITE(PP_OFF_DELAYS(0),
     REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
     REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));

 I915_WRITE(PP_DIVISOR(0),
     REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
     REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
      DIV_ROUND_UP(pps->t4, 1000) + 1));
}
