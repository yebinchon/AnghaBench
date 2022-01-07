
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max; int level; scalar_t__ active_low_pwm; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK_PNV ;
 int BLC_HIST_CTL ;
 int BLC_PWM_CTL ;
 int BLM_HISTOGRAM_ENABLE ;
 int BLM_LEGACY_MODE ;
 int BLM_POLARITY_PNV ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 ctl, freq;

 ctl = I915_READ(BLC_PWM_CTL);
 if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
  DRM_DEBUG_KMS("backlight already enabled\n");
  I915_WRITE(BLC_PWM_CTL, 0);
 }

 freq = panel->backlight.max;
 if (panel->backlight.combination_mode)
  freq /= 0xff;

 ctl = freq << 17;
 if (panel->backlight.combination_mode)
  ctl |= BLM_LEGACY_MODE;
 if (IS_PINEVIEW(dev_priv) && panel->backlight.active_low_pwm)
  ctl |= BLM_POLARITY_PNV;

 I915_WRITE(BLC_PWM_CTL, ctl);
 POSTING_READ(BLC_PWM_CTL);


 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);






 if (IS_GEN(dev_priv, 2))
  I915_WRITE(BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
}
