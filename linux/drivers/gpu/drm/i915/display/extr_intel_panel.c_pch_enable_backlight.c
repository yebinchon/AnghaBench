
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max; scalar_t__ active_low_pwm; int level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLC_PWM_PCH_CTL2 ;
 int BLM_PCH_POLARITY ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PIPE (int) ;
 int BLM_PWM_ENABLE ;
 int BLM_TRANSCODER_EDP ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int TRANSCODER_EDP ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 cpu_ctl2, pch_ctl1, pch_ctl2;

 cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);
 if (cpu_ctl2 & BLM_PWM_ENABLE) {
  DRM_DEBUG_KMS("cpu backlight already enabled\n");
  cpu_ctl2 &= ~BLM_PWM_ENABLE;
  I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2);
 }

 pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
 if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
  DRM_DEBUG_KMS("pch backlight already enabled\n");
  pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
  I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
 }

 if (cpu_transcoder == TRANSCODER_EDP)
  cpu_ctl2 = BLM_TRANSCODER_EDP;
 else
  cpu_ctl2 = BLM_PIPE(cpu_transcoder);
 I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2);
 POSTING_READ(BLC_PWM_CPU_CTL2);
 I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);


 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);

 pch_ctl2 = panel->backlight.max << 16;
 I915_WRITE(BLC_PWM_PCH_CTL2, pch_ctl2);

 pch_ctl1 = 0;
 if (panel->backlight.active_low_pwm)
  pch_ctl1 |= BLM_PCH_POLARITY;

 I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
 POSTING_READ(BLC_PWM_PCH_CTL1);
 I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
}
