
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int crtc; int connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int pipe; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int VLV_BLC_PWM_CTL (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 TYPE_2__* to_intel_crtc (int ) ;

__attribute__((used)) static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 u32 tmp;

 tmp = I915_READ(VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
 I915_WRITE(VLV_BLC_PWM_CTL(pipe), tmp | level);
}
