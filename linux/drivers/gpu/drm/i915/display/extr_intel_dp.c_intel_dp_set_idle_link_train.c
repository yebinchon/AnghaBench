
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DP_TP_CTL (int) ;
 int DP_TP_CTL_LINK_TRAIN_IDLE ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_STATUS (int) ;
 int DP_TP_STATUS_IDLE_DONE ;
 int DRM_ERROR (char*) ;
 int HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PORT_A ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

void intel_dp_set_idle_link_train(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 enum port port = intel_dig_port->base.port;
 u32 val;

 if (!HAS_DDI(dev_priv))
  return;

 val = I915_READ(DP_TP_CTL(port));
 val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
 val |= DP_TP_CTL_LINK_TRAIN_IDLE;
 I915_WRITE(DP_TP_CTL(port), val);
 if (port == PORT_A)
  return;

 if (intel_de_wait_for_set(dev_priv, DP_TP_STATUS(port),
      DP_TP_STATUS_IDLE_DONE, 1))
  DRM_ERROR("Timed out waiting for DP idle patterns\n");
}
