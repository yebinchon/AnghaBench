
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


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int TV_CTL ;
 int TV_ENC_ENABLE ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void
intel_disable_tv(struct intel_encoder *encoder,
   const struct intel_crtc_state *old_crtc_state,
   const struct drm_connector_state *old_conn_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);

 I915_WRITE(TV_CTL, I915_READ(TV_CTL) & ~TV_ENC_ENABLE);
}
