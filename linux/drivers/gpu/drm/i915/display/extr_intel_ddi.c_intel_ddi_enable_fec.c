
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int fec_enable; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DP_TP_CTL (int) ;
 int DP_TP_CTL_FEC_ENABLE ;
 int DP_TP_STATUS (int) ;
 int DP_TP_STATUS_FEC_ENABLE_LIVE ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_ddi_enable_fec(struct intel_encoder *encoder,
     const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = encoder->port;
 u32 val;

 if (!crtc_state->fec_enable)
  return;

 val = I915_READ(DP_TP_CTL(port));
 val |= DP_TP_CTL_FEC_ENABLE;
 I915_WRITE(DP_TP_CTL(port), val);

 if (intel_de_wait_for_set(dev_priv, DP_TP_STATUS(port),
      DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
  DRM_ERROR("Timed out waiting for FEC Enable Status\n");
}
