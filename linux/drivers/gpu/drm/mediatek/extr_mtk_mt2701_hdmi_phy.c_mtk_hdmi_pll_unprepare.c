
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int HDMI_CON0 ;
 int HDMI_CON2 ;
 int HDMI_CON6 ;
 int HDMI_CON7 ;
 int RG_HDMITX_EN_DRV_MASK ;
 int RG_HDMITX_EN_MBIAS ;
 int RG_HDMITX_EN_PRED_MASK ;
 int RG_HDMITX_EN_SER_MASK ;
 int RG_HDMITX_EN_SLDO_MASK ;
 int RG_HDMITX_EN_TX_CKLDO ;
 int RG_HDMITX_MBIAS_LPF_EN ;
 int RG_HTPLL_AUTOK_EN ;
 int RG_HTPLL_EN ;
 int RG_HTPLL_POSDIV_MASK ;
 int RG_HTPLL_RLH_EN ;
 int mtk_hdmi_phy_clear_bits (struct mtk_hdmi_phy*,int ,int ) ;
 struct mtk_hdmi_phy* to_mtk_hdmi_phy (struct clk_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
{
 struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);

 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_DRV_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_PRED_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_SER_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON2, RG_HDMITX_MBIAS_LPF_EN);
 usleep_range(80, 100);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_SLDO_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON2, RG_HDMITX_EN_TX_CKLDO);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON6, RG_HTPLL_EN);
 usleep_range(80, 100);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON2, RG_HDMITX_EN_MBIAS);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON6, RG_HTPLL_POSDIV_MASK);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON6, RG_HTPLL_RLH_EN);
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON7, RG_HTPLL_AUTOK_EN);
 usleep_range(80, 100);
}
