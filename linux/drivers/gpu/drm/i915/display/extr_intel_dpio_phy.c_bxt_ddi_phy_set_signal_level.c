
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;


 int BXT_PORT_PCS_DW10_GRP (int,int) ;
 int BXT_PORT_PCS_DW10_LN01 (int,int) ;
 int BXT_PORT_TX_DW2_GRP (int,int) ;
 int BXT_PORT_TX_DW2_LN0 (int,int) ;
 int BXT_PORT_TX_DW3_GRP (int,int) ;
 int BXT_PORT_TX_DW3_LN0 (int,int) ;
 int BXT_PORT_TX_DW4_GRP (int,int) ;
 int BXT_PORT_TX_DW4_LN0 (int,int) ;
 int DEEMPH_SHIFT ;
 int DE_EMPHASIS ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MARGIN_000 ;
 int MARGIN_000_SHIFT ;
 int SCALE_DCOMP_METHOD ;
 int TX1_SWING_CALC_INIT ;
 int TX2_SWING_CALC_INIT ;
 int UNIQUE_TRANGE_EN_METHOD ;
 int UNIQ_TRANS_SCALE ;
 int UNIQ_TRANS_SCALE_SHIFT ;
 int bxt_port_to_phy_channel (struct drm_i915_private*,int,int*,int*) ;

void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
      enum port port, u32 margin, u32 scale,
      u32 enable, u32 deemphasis)
{
 u32 val;
 enum dpio_phy phy;
 enum dpio_channel ch;

 bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);





 val = I915_READ(BXT_PORT_PCS_DW10_LN01(phy, ch));
 val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 I915_WRITE(BXT_PORT_PCS_DW10_GRP(phy, ch), val);

 val = I915_READ(BXT_PORT_TX_DW2_LN0(phy, ch));
 val &= ~(MARGIN_000 | UNIQ_TRANS_SCALE);
 val |= margin << MARGIN_000_SHIFT | scale << UNIQ_TRANS_SCALE_SHIFT;
 I915_WRITE(BXT_PORT_TX_DW2_GRP(phy, ch), val);

 val = I915_READ(BXT_PORT_TX_DW3_LN0(phy, ch));
 val &= ~SCALE_DCOMP_METHOD;
 if (enable)
  val |= SCALE_DCOMP_METHOD;

 if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
  DRM_ERROR("Disabled scaling while ouniqetrangenmethod was set");

 I915_WRITE(BXT_PORT_TX_DW3_GRP(phy, ch), val);

 val = I915_READ(BXT_PORT_TX_DW4_LN0(phy, ch));
 val &= ~DE_EMPHASIS;
 val |= deemphasis << DEEMPH_SHIFT;
 I915_WRITE(BXT_PORT_TX_DW4_GRP(phy, ch), val);

 val = I915_READ(BXT_PORT_PCS_DW10_LN01(phy, ch));
 val |= TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT;
 I915_WRITE(BXT_PORT_PCS_DW10_GRP(phy, ch), val);
}
