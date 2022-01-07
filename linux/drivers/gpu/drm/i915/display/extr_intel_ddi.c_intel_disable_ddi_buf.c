
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_CTL_ENABLE ;
 int DP_TP_CTL (int) ;
 int DP_TP_CTL_ENABLE ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_CTL_LINK_TRAIN_PAT1 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int intel_ddi_disable_fec_state (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_wait_ddi_buf_idle (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_disable_ddi_buf(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = encoder->port;
 bool wait = 0;
 u32 val;

 val = I915_READ(DDI_BUF_CTL(port));
 if (val & DDI_BUF_CTL_ENABLE) {
  val &= ~DDI_BUF_CTL_ENABLE;
  I915_WRITE(DDI_BUF_CTL(port), val);
  wait = 1;
 }

 val = I915_READ(DP_TP_CTL(port));
 val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
 val |= DP_TP_CTL_LINK_TRAIN_PAT1;
 I915_WRITE(DP_TP_CTL(port), val);


 intel_ddi_disable_fec_state(encoder, crtc_state);

 if (wait)
  intel_wait_ddi_buf_idle(dev_priv, port);
}
