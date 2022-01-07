
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max; int controller; scalar_t__ active_low_pwm; int level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;


 int BXT_BLC_PWM_CTL (int ) ;
 int BXT_BLC_PWM_ENABLE ;
 int BXT_BLC_PWM_FREQ (int ) ;
 int BXT_BLC_PWM_POLARITY ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 pwm_ctl;

 pwm_ctl = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
 if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
  DRM_DEBUG_KMS("backlight already enabled\n");
  pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
  I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
      pwm_ctl);
 }

 I915_WRITE(BXT_BLC_PWM_FREQ(panel->backlight.controller),
     panel->backlight.max);

 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);

 pwm_ctl = 0;
 if (panel->backlight.active_low_pwm)
  pwm_ctl |= BXT_BLC_PWM_POLARITY;

 I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
 POSTING_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
 I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
     pwm_ctl | BXT_BLC_PWM_ENABLE);
}
