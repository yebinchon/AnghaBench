
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {TYPE_1__* connector; } ;
struct TYPE_2__ {int dev; } ;


 int BLC_PWM_CTL2 ;
 int BLM_PWM_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i965_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(old_conn_state->connector->dev);
 u32 tmp;

 intel_panel_actually_set_backlight(old_conn_state, 0);

 tmp = I915_READ(BLC_PWM_CTL2);
 I915_WRITE(BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
}
