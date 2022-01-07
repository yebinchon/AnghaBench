
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PWM_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void lpt_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 u32 tmp;

 intel_panel_actually_set_backlight(old_conn_state, 0);
 tmp = I915_READ(BLC_PWM_CPU_CTL2);
 if (tmp & BLM_PWM_ENABLE) {
  DRM_DEBUG_KMS("cpu backlight was enabled, disabling\n");
  I915_WRITE(BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 }

 tmp = I915_READ(BLC_PWM_PCH_CTL1);
 I915_WRITE(BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
}
