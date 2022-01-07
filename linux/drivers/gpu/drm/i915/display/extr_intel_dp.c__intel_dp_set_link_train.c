
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_dp {int dpcd; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_TRAIN_MASK ;
 int DP_LINK_TRAIN_MASK_CPT ;
 int DP_LINK_TRAIN_OFF ;
 int DP_LINK_TRAIN_OFF_CPT ;
 int DP_LINK_TRAIN_PAT_1 ;
 int DP_LINK_TRAIN_PAT_1_CPT ;
 int DP_LINK_TRAIN_PAT_2 ;
 int DP_LINK_TRAIN_PAT_2_CPT ;
 int DP_TP_CTL (int) ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_CTL_LINK_TRAIN_NORMAL ;
 int DP_TP_CTL_LINK_TRAIN_PAT1 ;
 int DP_TP_CTL_LINK_TRAIN_PAT2 ;
 int DP_TP_CTL_LINK_TRAIN_PAT3 ;
 int DP_TP_CTL_LINK_TRAIN_PAT4 ;
 int DP_TP_CTL_SCRAMBLE_DISABLE ;





 int DP_TRAINING_PATTERN_MASK ;
 int DRM_DEBUG_KMS (char*,...) ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int PORT_A ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int drm_dp_training_pattern_mask (int ) ;

__attribute__((used)) static void
_intel_dp_set_link_train(struct intel_dp *intel_dp,
    u32 *DP,
    u8 dp_train_pat)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 enum port port = intel_dig_port->base.port;
 u8 train_pat_mask = drm_dp_training_pattern_mask(intel_dp->dpcd);

 if (dp_train_pat & train_pat_mask)
  DRM_DEBUG_KMS("Using DP training pattern TPS%d\n",
         dp_train_pat & train_pat_mask);

 if (HAS_DDI(dev_priv)) {
  u32 temp = I915_READ(DP_TP_CTL(port));

  if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
   temp |= DP_TP_CTL_SCRAMBLE_DISABLE;
  else
   temp &= ~DP_TP_CTL_SCRAMBLE_DISABLE;

  temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
  switch (dp_train_pat & train_pat_mask) {
  case 128:
   temp |= DP_TP_CTL_LINK_TRAIN_NORMAL;

   break;
  case 132:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
   break;
  case 131:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT2;
   break;
  case 130:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT3;
   break;
  case 129:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT4;
   break;
  }
  I915_WRITE(DP_TP_CTL(port), temp);

 } else if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
     (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
  *DP &= ~DP_LINK_TRAIN_MASK_CPT;

  switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
  case 128:
   *DP |= DP_LINK_TRAIN_OFF_CPT;
   break;
  case 132:
   *DP |= DP_LINK_TRAIN_PAT_1_CPT;
   break;
  case 131:
   *DP |= DP_LINK_TRAIN_PAT_2_CPT;
   break;
  case 130:
   DRM_DEBUG_KMS("TPS3 not supported, using TPS2 instead\n");
   *DP |= DP_LINK_TRAIN_PAT_2_CPT;
   break;
  }

 } else {
  *DP &= ~DP_LINK_TRAIN_MASK;

  switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
  case 128:
   *DP |= DP_LINK_TRAIN_OFF;
   break;
  case 132:
   *DP |= DP_LINK_TRAIN_PAT_1;
   break;
  case 131:
   *DP |= DP_LINK_TRAIN_PAT_2;
   break;
  case 130:
   DRM_DEBUG_KMS("TPS3 not supported, using TPS2 instead\n");
   *DP |= DP_LINK_TRAIN_PAT_2;
   break;
  }
 }
}
