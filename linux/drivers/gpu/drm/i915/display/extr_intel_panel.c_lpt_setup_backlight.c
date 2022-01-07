
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int alternate_pwm_increment; int active_low_pwm; int max; int enabled; int level; int min; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int state; int dev; } ;
struct intel_connector {TYPE_1__ base; struct intel_panel panel; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLC_PWM_PCH_CTL2 ;
 int BLM_PCH_OVERRIDE_ENABLE ;
 int BLM_PCH_POLARITY ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PWM_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int ENODEV ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LPT_PWM_GRANULARITY ;
 int SOUTH_CHICKEN1 ;
 int SOUTH_CHICKEN2 ;
 int SPT_PWM_GRANULARITY ;
 int clamp (int,int ,int) ;
 int get_backlight_max_vbt (struct intel_connector*) ;
 int get_backlight_min_vbt (struct intel_connector*) ;
 int intel_panel_compute_brightness (struct intel_connector*,int) ;
 int lpt_get_backlight (struct intel_connector*) ;
 int lpt_set_backlight (int ,int ) ;
 int pch_get_backlight (struct intel_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unused)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
 bool alt, cpu_mode;

 if (HAS_PCH_LPT(dev_priv))
  alt = I915_READ(SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
 else
  alt = I915_READ(SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
 panel->backlight.alternate_pwm_increment = alt;

 pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
 panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;

 pch_ctl2 = I915_READ(BLC_PWM_PCH_CTL2);
 panel->backlight.max = pch_ctl2 >> 16;

 cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);

 if (!panel->backlight.max)
  panel->backlight.max = get_backlight_max_vbt(connector);

 if (!panel->backlight.max)
  return -ENODEV;

 panel->backlight.min = get_backlight_min_vbt(connector);

 panel->backlight.enabled = pch_ctl1 & BLM_PCH_PWM_ENABLE;

 cpu_mode = panel->backlight.enabled && HAS_PCH_LPT(dev_priv) &&
     !(pch_ctl1 & BLM_PCH_OVERRIDE_ENABLE) &&
     (cpu_ctl2 & BLM_PWM_ENABLE);
 if (cpu_mode)
  val = pch_get_backlight(connector);
 else
  val = lpt_get_backlight(connector);
 val = intel_panel_compute_brightness(connector, val);
 panel->backlight.level = clamp(val, panel->backlight.min,
           panel->backlight.max);

 if (cpu_mode) {
  DRM_DEBUG_KMS("CPU backlight register was enabled, switching to PCH override\n");


  lpt_set_backlight(connector->base.state, panel->backlight.level);
  I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);

  I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2 & ~BLM_PWM_ENABLE);
 }

 return 0;
}
