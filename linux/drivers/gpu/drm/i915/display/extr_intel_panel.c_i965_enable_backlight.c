
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int max; int level; scalar_t__ active_low_pwm; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int crtc; int connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int pipe; } ;


 int BLC_PWM_CTL ;
 int BLC_PWM_CTL2 ;
 int BLM_COMBINATION_MODE ;
 int BLM_PIPE (int) ;
 int BLM_POLARITY_I965 ;
 int BLM_PWM_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 TYPE_3__* to_intel_crtc (int ) ;

__attribute__((used)) static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 u32 ctl, ctl2, freq;

 ctl2 = I915_READ(BLC_PWM_CTL2);
 if (ctl2 & BLM_PWM_ENABLE) {
  DRM_DEBUG_KMS("backlight already enabled\n");
  ctl2 &= ~BLM_PWM_ENABLE;
  I915_WRITE(BLC_PWM_CTL2, ctl2);
 }

 freq = panel->backlight.max;
 if (panel->backlight.combination_mode)
  freq /= 0xff;

 ctl = freq << 16;
 I915_WRITE(BLC_PWM_CTL, ctl);

 ctl2 = BLM_PIPE(pipe);
 if (panel->backlight.combination_mode)
  ctl2 |= BLM_COMBINATION_MODE;
 if (panel->backlight.active_low_pwm)
  ctl2 |= BLM_POLARITY_I965;
 I915_WRITE(BLC_PWM_CTL2, ctl2);
 POSTING_READ(BLC_PWM_CTL2);
 I915_WRITE(BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);

 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
}
