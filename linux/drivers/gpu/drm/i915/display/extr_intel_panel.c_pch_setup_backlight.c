
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int active_low_pwm; int max; int enabled; int min; int level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLC_PWM_PCH_CTL2 ;
 int BLM_PCH_POLARITY ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PWM_ENABLE ;
 int ENODEV ;
 int I915_READ (int ) ;
 int clamp (int,int ,int) ;
 int get_backlight_max_vbt (struct intel_connector*) ;
 int get_backlight_min_vbt (struct intel_connector*) ;
 int intel_panel_compute_brightness (struct intel_connector*,int) ;
 int pch_get_backlight (struct intel_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int pch_setup_backlight(struct intel_connector *connector, enum pipe unused)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;

 pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
 panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;

 pch_ctl2 = I915_READ(BLC_PWM_PCH_CTL2);
 panel->backlight.max = pch_ctl2 >> 16;

 if (!panel->backlight.max)
  panel->backlight.max = get_backlight_max_vbt(connector);

 if (!panel->backlight.max)
  return -ENODEV;

 panel->backlight.min = get_backlight_min_vbt(connector);

 val = pch_get_backlight(connector);
 val = intel_panel_compute_brightness(connector, val);
 panel->backlight.level = clamp(val, panel->backlight.min,
           panel->backlight.max);

 cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);
 panel->backlight.enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
  (pch_ctl1 & BLM_PCH_PWM_ENABLE);

 return 0;
}
