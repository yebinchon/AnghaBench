
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_dp {int lane_count; int link_rate; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;


 int CNL_PORT_CL1CM_DW5 ;
 int CNL_PORT_PCS_DW1_GRP (int) ;
 int CNL_PORT_PCS_DW1_LN0 (int) ;
 int CNL_PORT_TX_DW4_LN (int,int) ;
 int CNL_PORT_TX_DW5_GRP (int) ;
 int CNL_PORT_TX_DW5_LN0 (int) ;
 int COMMON_KEEPER_EN ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_OUTPUT_HDMI ;
 int LOADGEN_SELECT ;
 int SUS_CLOCK_CONFIG ;
 int TX_TRAINING_EN ;
 int cnl_ddi_vswing_program (struct intel_encoder*,int,int) ;
 struct intel_dp* enc_to_intel_dp (TYPE_1__*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void cnl_ddi_vswing_sequence(struct intel_encoder *encoder,
        int level, enum intel_output_type type)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = encoder->port;
 int width, rate, ln;
 u32 val;

 if (type == INTEL_OUTPUT_HDMI) {
  width = 4;
  rate = 0;
 } else {
  struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);

  width = intel_dp->lane_count;
  rate = intel_dp->link_rate;
 }






 val = I915_READ(CNL_PORT_PCS_DW1_LN0(port));
 if (type != INTEL_OUTPUT_HDMI)
  val |= COMMON_KEEPER_EN;
 else
  val &= ~COMMON_KEEPER_EN;
 I915_WRITE(CNL_PORT_PCS_DW1_GRP(port), val);
 for (ln = 0; ln <= 3; ln++) {
  val = I915_READ(CNL_PORT_TX_DW4_LN(ln, port));
  val &= ~LOADGEN_SELECT;

  if ((rate <= 600000 && width == 4 && ln >= 1) ||
      (rate <= 600000 && width < 4 && (ln == 1 || ln == 2))) {
   val |= LOADGEN_SELECT;
  }
  I915_WRITE(CNL_PORT_TX_DW4_LN(ln, port), val);
 }


 val = I915_READ(CNL_PORT_CL1CM_DW5);
 val |= SUS_CLOCK_CONFIG;
 I915_WRITE(CNL_PORT_CL1CM_DW5, val);


 val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
 val &= ~TX_TRAINING_EN;
 I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);


 cnl_ddi_vswing_program(encoder, level, type);


 val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
 val |= TX_TRAINING_EN;
 I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);
}
