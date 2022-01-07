
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;
struct TYPE_6__ {int pipe; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int TV_CTL ;
 int TV_ENC_ENABLE ;
 int intel_wait_for_vblank (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 TYPE_3__* to_intel_crtc (int ) ;

__attribute__((used)) static void
intel_enable_tv(struct intel_encoder *encoder,
  const struct intel_crtc_state *pipe_config,
  const struct drm_connector_state *conn_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);


 intel_wait_for_vblank(dev_priv,
         to_intel_crtc(pipe_config->base.crtc)->pipe);

 I915_WRITE(TV_CTL, I915_READ(TV_CTL) | TV_ENC_ENABLE);
}
