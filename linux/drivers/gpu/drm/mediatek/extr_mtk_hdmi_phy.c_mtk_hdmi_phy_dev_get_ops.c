
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_ops {int dummy; } ;
struct mtk_hdmi_phy {int dev; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ hdmi_phy_disable_tmds; scalar_t__ hdmi_phy_enable_tmds; } ;


 int dev_err (int ,char*) ;
 struct phy_ops const mtk_hdmi_phy_dev_ops ;

__attribute__((used)) static const struct phy_ops *
mtk_hdmi_phy_dev_get_ops(const struct mtk_hdmi_phy *hdmi_phy)
{
 if (hdmi_phy && hdmi_phy->conf &&
     hdmi_phy->conf->hdmi_phy_enable_tmds &&
     hdmi_phy->conf->hdmi_phy_disable_tmds)
  return &mtk_hdmi_phy_dev_ops;

 dev_err(hdmi_phy->dev, "Failed to get dev ops of phy\n");
  return ((void*)0);
}
