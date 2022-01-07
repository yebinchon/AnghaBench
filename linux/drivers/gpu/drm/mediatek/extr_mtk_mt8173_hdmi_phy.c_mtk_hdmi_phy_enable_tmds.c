
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_phy {int dummy; } ;


 int HDMI_CON3 ;
 int RG_HDMITX_DRV_EN ;
 int RG_HDMITX_PRD_EN ;
 int RG_HDMITX_SER_EN ;
 int mtk_hdmi_phy_set_bits (struct mtk_hdmi_phy*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_phy_enable_tmds(struct mtk_hdmi_phy *hdmi_phy)
{
 mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON3,
         RG_HDMITX_SER_EN | RG_HDMITX_PRD_EN |
         RG_HDMITX_DRV_EN);
 usleep_range(100, 150);
}
