
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun8i_hdmi_phy {TYPE_1__* variant; } ;
struct TYPE_2__ {int (* phy_init ) (struct sun8i_hdmi_phy*) ;} ;


 int stub1 (struct sun8i_hdmi_phy*) ;

void sun8i_hdmi_phy_init(struct sun8i_hdmi_phy *phy)
{
 phy->variant->phy_init(phy);
}
