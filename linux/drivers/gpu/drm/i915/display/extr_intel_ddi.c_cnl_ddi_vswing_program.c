
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct cnl_ddi_buf_trans {int dw7_n_scalar; int dw4_cursor_coeff; int dw4_post_cursor_2; int dw4_post_cursor_1; int dw2_swing_sel; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;


 int CNL_PORT_TX_DW2_GRP (int) ;
 int CNL_PORT_TX_DW2_LN0 (int) ;
 int CNL_PORT_TX_DW4_LN (int,int) ;
 int CNL_PORT_TX_DW5_GRP (int) ;
 int CNL_PORT_TX_DW5_LN0 (int) ;
 int CNL_PORT_TX_DW7_GRP (int) ;
 int CNL_PORT_TX_DW7_LN0 (int) ;
 int CURSOR_COEFF (int ) ;
 int CURSOR_COEFF_MASK ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 int N_SCALAR (int ) ;
 int N_SCALAR_MASK ;
 int POST_CURSOR_1 (int ) ;
 int POST_CURSOR_1_MASK ;
 int POST_CURSOR_2 (int ) ;
 int POST_CURSOR_2_MASK ;
 int RCOMP_SCALAR (int) ;
 int RCOMP_SCALAR_MASK ;
 int RTERM_SELECT (int) ;
 int RTERM_SELECT_MASK ;
 int SCALING_MODE_SEL (int) ;
 int SCALING_MODE_SEL_MASK ;
 int SWING_SEL_LOWER (int ) ;
 int SWING_SEL_LOWER_MASK ;
 int SWING_SEL_UPPER (int ) ;
 int SWING_SEL_UPPER_MASK ;
 int TAP3_DISABLE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct cnl_ddi_buf_trans* cnl_get_buf_trans_dp (struct drm_i915_private*,int*) ;
 struct cnl_ddi_buf_trans* cnl_get_buf_trans_edp (struct drm_i915_private*,int*) ;
 struct cnl_ddi_buf_trans* cnl_get_buf_trans_hdmi (struct drm_i915_private*,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void cnl_ddi_vswing_program(struct intel_encoder *encoder,
       int level, enum intel_output_type type)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 const struct cnl_ddi_buf_trans *ddi_translations;
 enum port port = encoder->port;
 int n_entries, ln;
 u32 val;

 if (type == INTEL_OUTPUT_HDMI)
  ddi_translations = cnl_get_buf_trans_hdmi(dev_priv, &n_entries);
 else if (type == INTEL_OUTPUT_EDP)
  ddi_translations = cnl_get_buf_trans_edp(dev_priv, &n_entries);
 else
  ddi_translations = cnl_get_buf_trans_dp(dev_priv, &n_entries);

 if (WARN_ON_ONCE(!ddi_translations))
  return;
 if (WARN_ON_ONCE(level >= n_entries))
  level = n_entries - 1;


 val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
 val &= ~SCALING_MODE_SEL_MASK;
 val |= SCALING_MODE_SEL(2);
 I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);


 val = I915_READ(CNL_PORT_TX_DW2_LN0(port));
 val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
   RCOMP_SCALAR_MASK);
 val |= SWING_SEL_UPPER(ddi_translations[level].dw2_swing_sel);
 val |= SWING_SEL_LOWER(ddi_translations[level].dw2_swing_sel);

 val |= RCOMP_SCALAR(0x98);
 I915_WRITE(CNL_PORT_TX_DW2_GRP(port), val);



 for (ln = 0; ln < 4; ln++) {
  val = I915_READ(CNL_PORT_TX_DW4_LN(ln, port));
  val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
    CURSOR_COEFF_MASK);
  val |= POST_CURSOR_1(ddi_translations[level].dw4_post_cursor_1);
  val |= POST_CURSOR_2(ddi_translations[level].dw4_post_cursor_2);
  val |= CURSOR_COEFF(ddi_translations[level].dw4_cursor_coeff);
  I915_WRITE(CNL_PORT_TX_DW4_LN(ln, port), val);
 }



 val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
 val &= ~RTERM_SELECT_MASK;
 val |= RTERM_SELECT(6);
 val |= TAP3_DISABLE;
 I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);


 val = I915_READ(CNL_PORT_TX_DW7_LN0(port));
 val &= ~N_SCALAR_MASK;
 val |= N_SCALAR(ddi_translations[level].dw7_n_scalar);
 I915_WRITE(CNL_PORT_TX_DW7_GRP(port), val);
}
