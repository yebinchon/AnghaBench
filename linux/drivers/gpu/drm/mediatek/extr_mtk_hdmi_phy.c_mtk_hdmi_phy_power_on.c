
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct mtk_hdmi_phy {TYPE_1__* conf; int pll; } ;
struct TYPE_2__ {int (* hdmi_phy_enable_tmds ) (struct mtk_hdmi_phy*) ;} ;


 int clk_prepare_enable (int ) ;
 struct mtk_hdmi_phy* phy_get_drvdata (struct phy*) ;
 int stub1 (struct mtk_hdmi_phy*) ;

__attribute__((used)) static int mtk_hdmi_phy_power_on(struct phy *phy)
{
 struct mtk_hdmi_phy *hdmi_phy = phy_get_drvdata(phy);
 int ret;

 ret = clk_prepare_enable(hdmi_phy->pll);
 if (ret < 0)
  return ret;

 hdmi_phy->conf->hdmi_phy_enable_tmds(hdmi_phy);
 return 0;
}
