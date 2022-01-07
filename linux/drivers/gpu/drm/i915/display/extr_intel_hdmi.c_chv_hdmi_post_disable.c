
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int chv_data_lane_soft_reset (struct intel_encoder*,struct intel_crtc_state const*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_dpio_get (struct drm_i915_private*) ;
 int vlv_dpio_put (struct drm_i915_private*) ;

__attribute__((used)) static void chv_hdmi_post_disable(struct intel_encoder *encoder,
      const struct intel_crtc_state *old_crtc_state,
      const struct drm_connector_state *old_conn_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);

 vlv_dpio_get(dev_priv);


 chv_data_lane_soft_reset(encoder, old_crtc_state, 1);

 vlv_dpio_put(dev_priv);
}
