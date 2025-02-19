
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int DP; int dpcd; scalar_t__ link_mst; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_CTL_ENABLE ;
 int DP_TP_CTL (int) ;
 int DP_TP_CTL_ENABLE ;
 int DP_TP_CTL_ENHANCED_FRAME_ENABLE ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_CTL_LINK_TRAIN_PAT1 ;
 int DP_TP_CTL_MODE_MST ;
 int DP_TP_CTL_MODE_SST ;
 int DP_TP_CTL_SCRAMBLE_DISABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 scalar_t__ drm_dp_enhanced_frame_cap (int ) ;
 int intel_wait_ddi_buf_idle (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv =
  to_i915(intel_dig_port->base.base.dev);
 enum port port = intel_dig_port->base.port;
 u32 val;
 bool wait = 0;

 if (I915_READ(DP_TP_CTL(port)) & DP_TP_CTL_ENABLE) {
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
  POSTING_READ(DP_TP_CTL(port));

  if (wait)
   intel_wait_ddi_buf_idle(dev_priv, port);
 }

 val = DP_TP_CTL_ENABLE |
       DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
 if (intel_dp->link_mst)
  val |= DP_TP_CTL_MODE_MST;
 else {
  val |= DP_TP_CTL_MODE_SST;
  if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
   val |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 }
 I915_WRITE(DP_TP_CTL(port), val);
 POSTING_READ(DP_TP_CTL(port));

 intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 I915_WRITE(DDI_BUF_CTL(port), intel_dp->DP);
 POSTING_READ(DDI_BUF_CTL(port));

 udelay(600);
}
