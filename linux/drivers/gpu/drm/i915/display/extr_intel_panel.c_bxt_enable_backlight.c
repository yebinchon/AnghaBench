
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int controller; int max; scalar_t__ active_low_pwm; int level; scalar_t__ util_pin_active_low; } ;
struct intel_panel {TYPE_3__ backlight; } ;
struct TYPE_6__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;


 int BXT_BLC_PWM_CTL (int) ;
 int BXT_BLC_PWM_ENABLE ;
 int BXT_BLC_PWM_FREQ (int) ;
 int BXT_BLC_PWM_POLARITY ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int UTIL_PIN_CTL ;
 int UTIL_PIN_ENABLE ;
 int UTIL_PIN_MODE_PWM ;
 int UTIL_PIN_PIPE (int) ;
 int UTIL_PIN_POLARITY ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 TYPE_4__* to_intel_crtc (int ) ;

__attribute__((used)) static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 enum pipe pipe = to_intel_crtc(crtc_state->base.crtc)->pipe;
 u32 pwm_ctl, val;


 if (panel->backlight.controller == 1) {
  val = I915_READ(UTIL_PIN_CTL);
  if (val & UTIL_PIN_ENABLE) {
   DRM_DEBUG_KMS("util pin already enabled\n");
   val &= ~UTIL_PIN_ENABLE;
   I915_WRITE(UTIL_PIN_CTL, val);
  }

  val = 0;
  if (panel->backlight.util_pin_active_low)
   val |= UTIL_PIN_POLARITY;
  I915_WRITE(UTIL_PIN_CTL, val | UTIL_PIN_PIPE(pipe) |
    UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
 }

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
