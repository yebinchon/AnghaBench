
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct mtk_hdmi_phy {int pll; TYPE_1__* conf; } ;
struct TYPE_2__ {int (* hdmi_phy_disable_tmds ) (struct mtk_hdmi_phy*) ;} ;


 int clk_disable_unprepare (int ) ;
 struct mtk_hdmi_phy* phy_get_drvdata (struct phy*) ;
 int stub1 (struct mtk_hdmi_phy*) ;

__attribute__((used)) static int mtk_hdmi_phy_power_off(struct phy *phy)
{
 struct mtk_hdmi_phy *hdmi_phy = phy_get_drvdata(phy);

 hdmi_phy->conf->hdmi_phy_disable_tmds(hdmi_phy);
 clk_disable_unprepare(hdmi_phy->pll);

 return 0;
}
