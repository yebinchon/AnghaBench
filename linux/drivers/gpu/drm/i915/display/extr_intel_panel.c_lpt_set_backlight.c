
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


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_PCH_CTL2 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void lpt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);

 u32 val = I915_READ(BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
 I915_WRITE(BLC_PWM_PCH_CTL2, val | level);
}
