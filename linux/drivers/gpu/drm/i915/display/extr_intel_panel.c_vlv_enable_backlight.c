
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int max; scalar_t__ active_low_pwm; int level; } ;
struct intel_panel {TYPE_3__ backlight; } ;
struct TYPE_6__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;


 int BLM_POLARITY_I965 ;
 int BLM_PWM_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int VLV_BLC_PWM_CTL (int) ;
 int VLV_BLC_PWM_CTL2 (int) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 TYPE_4__* to_intel_crtc (int ) ;

__attribute__((used)) static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 enum pipe pipe = to_intel_crtc(crtc_state->base.crtc)->pipe;
 u32 ctl, ctl2;

 ctl2 = I915_READ(VLV_BLC_PWM_CTL2(pipe));
 if (ctl2 & BLM_PWM_ENABLE) {
  DRM_DEBUG_KMS("backlight already enabled\n");
  ctl2 &= ~BLM_PWM_ENABLE;
  I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2);
 }

 ctl = panel->backlight.max << 16;
 I915_WRITE(VLV_BLC_PWM_CTL(pipe), ctl);


 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);

 ctl2 = 0;
 if (panel->backlight.active_low_pwm)
  ctl2 |= BLM_POLARITY_I965;
 I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2);
 POSTING_READ(VLV_BLC_PWM_CTL2(pipe));
 I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2 | BLM_PWM_ENABLE);
}
