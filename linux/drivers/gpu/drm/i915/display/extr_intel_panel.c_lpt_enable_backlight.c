
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max; int level; scalar_t__ active_low_pwm; scalar_t__ alternate_pwm_increment; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;


 int BLC_PWM_PCH_CTL1 ;
 int BLC_PWM_PCH_CTL2 ;
 int BLM_PCH_OVERRIDE_ENABLE ;
 int BLM_PCH_POLARITY ;
 int BLM_PCH_PWM_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LPT_PWM_GRANULARITY ;
 int POSTING_READ (int ) ;
 int SOUTH_CHICKEN1 ;
 int SOUTH_CHICKEN2 ;
 int SPT_PWM_GRANULARITY ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 pch_ctl1, pch_ctl2, schicken;

 pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
 if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
  DRM_DEBUG_KMS("pch backlight already enabled\n");
  pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
  I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
 }

 if (HAS_PCH_LPT(dev_priv)) {
  schicken = I915_READ(SOUTH_CHICKEN2);
  if (panel->backlight.alternate_pwm_increment)
   schicken |= LPT_PWM_GRANULARITY;
  else
   schicken &= ~LPT_PWM_GRANULARITY;
  I915_WRITE(SOUTH_CHICKEN2, schicken);
 } else {
  schicken = I915_READ(SOUTH_CHICKEN1);
  if (panel->backlight.alternate_pwm_increment)
   schicken |= SPT_PWM_GRANULARITY;
  else
   schicken &= ~SPT_PWM_GRANULARITY;
  I915_WRITE(SOUTH_CHICKEN1, schicken);
 }

 pch_ctl2 = panel->backlight.max << 16;
 I915_WRITE(BLC_PWM_PCH_CTL2, pch_ctl2);

 pch_ctl1 = 0;
 if (panel->backlight.active_low_pwm)
  pch_ctl1 |= BLM_PCH_POLARITY;


 if (HAS_PCH_LPT(dev_priv))
  pch_ctl1 |= BLM_PCH_OVERRIDE_ENABLE;

 I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
 POSTING_READ(BLC_PWM_PCH_CTL1);
 I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);


 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
}
