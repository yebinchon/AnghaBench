
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun8i_hdmi_phy {TYPE_1__* variant; } ;
struct dw_hdmi {int dummy; } ;
struct TYPE_2__ {int (* phy_disable ) (struct dw_hdmi*,struct sun8i_hdmi_phy*) ;} ;


 int stub1 (struct dw_hdmi*,struct sun8i_hdmi_phy*) ;

__attribute__((used)) static void sun8i_hdmi_phy_disable(struct dw_hdmi *hdmi, void *data)
{
 struct sun8i_hdmi_phy *phy = (struct sun8i_hdmi_phy *)data;

 phy->variant->phy_disable(hdmi, phy);
}
