
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; int port; } ;
struct intel_dp {int lane_count; int link_rate; } ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;


 int COMMON_KEEPER_EN ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int ICL_PORT_CL_DW5 (int) ;
 int ICL_PORT_PCS_DW1_GRP (int) ;
 int ICL_PORT_PCS_DW1_LN0 (int) ;
 int ICL_PORT_TX_DW4_LN (int,int) ;
 int ICL_PORT_TX_DW5_GRP (int) ;
 int ICL_PORT_TX_DW5_LN0 (int) ;
 int INTEL_OUTPUT_HDMI ;
 int LOADGEN_SELECT ;
 int SUS_CLOCK_CONFIG ;
 int TX_TRAINING_EN ;
 struct intel_dp* enc_to_intel_dp (TYPE_1__*) ;
 int icl_ddi_combo_vswing_program (struct drm_i915_private*,int ,int,int,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
           u32 level,
           enum intel_output_type type)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 int width = 0;
 int rate = 0;
 u32 val;
 int ln = 0;

 if (type == INTEL_OUTPUT_HDMI) {
  width = 4;

 } else {
  struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);

  width = intel_dp->lane_count;
  rate = intel_dp->link_rate;
 }






 val = I915_READ(ICL_PORT_PCS_DW1_LN0(phy));
 if (type == INTEL_OUTPUT_HDMI)
  val &= ~COMMON_KEEPER_EN;
 else
  val |= COMMON_KEEPER_EN;
 I915_WRITE(ICL_PORT_PCS_DW1_GRP(phy), val);
 for (ln = 0; ln <= 3; ln++) {
  val = I915_READ(ICL_PORT_TX_DW4_LN(ln, phy));
  val &= ~LOADGEN_SELECT;

  if ((rate <= 600000 && width == 4 && ln >= 1) ||
      (rate <= 600000 && width < 4 && (ln == 1 || ln == 2))) {
   val |= LOADGEN_SELECT;
  }
  I915_WRITE(ICL_PORT_TX_DW4_LN(ln, phy), val);
 }


 val = I915_READ(ICL_PORT_CL_DW5(phy));
 val |= SUS_CLOCK_CONFIG;
 I915_WRITE(ICL_PORT_CL_DW5(phy), val);


 val = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
 val &= ~TX_TRAINING_EN;
 I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), val);


 icl_ddi_combo_vswing_program(dev_priv, level, phy, type, rate);


 val = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
 val |= TX_TRAINING_EN;
 I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), val);
}
