
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_phy {int dummy; } ;


 int HDMI_CON3 ;
 int RG_HDMITX_DRV_EN ;
 int RG_HDMITX_PRD_EN ;
 int RG_HDMITX_SER_EN ;
 int mtk_hdmi_phy_clear_bits (struct mtk_hdmi_phy*,int ,int) ;

__attribute__((used)) static void mtk_hdmi_phy_disable_tmds(struct mtk_hdmi_phy *hdmi_phy)
{
 mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON3,
    RG_HDMITX_DRV_EN | RG_HDMITX_PRD_EN |
    RG_HDMITX_SER_EN);
}
