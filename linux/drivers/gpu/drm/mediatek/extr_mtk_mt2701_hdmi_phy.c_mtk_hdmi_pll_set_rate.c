
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int HDMI_CON0 ;
 int HDMI_CON1 ;
 int HDMI_CON2 ;
 int HDMI_CON4 ;
 int HDMI_CON6 ;
 int HDMI_CON7 ;
 int RG_HDMITX_DRV_IBIAS ;
 int RG_HDMITX_DRV_IBIAS_MASK ;
 int RG_HDMITX_DRV_IMP ;
 int RG_HDMITX_DRV_IMP_MASK ;
 int RG_HDMITX_EN_IMP_MASK ;
 int RG_HDMITX_EN_TX_POSDIV ;
 int RG_HDMITX_PRED_IBIAS ;
 int RG_HDMITX_PRED_IBIAS_MASK ;
 int RG_HDMITX_PRED_IMP ;
 int RG_HDMITX_RESERVE_MASK ;
 int RG_HDMITX_TX_POSDIV ;
 int RG_HDMITX_TX_POSDIV_MASK ;
 int RG_HTPLL_BC ;
 int RG_HTPLL_BC_MASK ;
 int RG_HTPLL_BP ;
 int RG_HTPLL_BP_MASK ;
 int RG_HTPLL_BR ;
 int RG_HTPLL_BR_MASK ;
 int RG_HTPLL_DIVEN ;
 int RG_HTPLL_DIVEN_MASK ;
 int RG_HTPLL_FBKDIV ;
 int RG_HTPLL_FBKDIV_MASK ;
 int RG_HTPLL_FBKSEL ;
 int RG_HTPLL_FBKSEL_MASK ;
 int RG_HTPLL_IC ;
 int RG_HTPLL_IC_MASK ;
 int RG_HTPLL_IR ;
 int RG_HTPLL_IR_MASK ;
 int RG_HTPLL_POSDIV_MASK ;
 int RG_HTPLL_PREDIV_MASK ;
 int mtk_hdmi_phy_clear_bits (struct mtk_hdmi_phy*,int ,int ) ;
 int mtk_hdmi_phy_mask (struct mtk_hdmi_phy*,int ,int,int ) ;
 int mtk_hdmi_phy_set_bits (struct mtk_hdmi_phy*,int ,int ) ;
 struct mtk_hdmi_phy* to_mtk_hdmi_phy (struct clk_hw*) ;

__attribute__((used)) static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 u32 pos_div;

 if (rate <= 64000000)
  pos_div = 3;
 else if (rate <= 128000000)
  pos_div = 2;
 else
  pos_div = 1;

 mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON6, RG_HTPLL_PREDIV_MASK);
 mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON6, RG_HTPLL_POSDIV_MASK);
 mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON2, RG_HDMITX_EN_TX_POSDIV);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (0x1 << RG_HTPLL_IC),
     RG_HTPLL_IC_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (0x1 << RG_HTPLL_IR),
     RG_HTPLL_IR_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON2, (pos_div << RG_HDMITX_TX_POSDIV),
     RG_HDMITX_TX_POSDIV_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (1 << RG_HTPLL_FBKSEL),
     RG_HTPLL_FBKSEL_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (19 << RG_HTPLL_FBKDIV),
     RG_HTPLL_FBKDIV_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON7, (0x2 << RG_HTPLL_DIVEN),
     RG_HTPLL_DIVEN_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (0xc << RG_HTPLL_BP),
     RG_HTPLL_BP_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (0x2 << RG_HTPLL_BC),
     RG_HTPLL_BC_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON6, (0x1 << RG_HTPLL_BR),
     RG_HTPLL_BR_MASK);

 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON1, RG_HDMITX_PRED_IMP);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON1, (0x3 << RG_HDMITX_PRED_IBIAS),
     RG_HDMITX_PRED_IBIAS_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_IMP_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON1, (0x28 << RG_HDMITX_DRV_IMP),
     RG_HDMITX_DRV_IMP_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON4, 0x28, RG_HDMITX_RESERVE_MASK);
 mtk_hdmi_phy_mask(hdmi_phy, HDMI_CON0, (0xa << RG_HDMITX_DRV_IBIAS),
     RG_HDMITX_DRV_IBIAS_MASK);
 return 0;
}
