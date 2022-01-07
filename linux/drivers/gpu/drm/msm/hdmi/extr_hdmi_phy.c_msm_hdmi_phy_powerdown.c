
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_phy {TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* powerdown ) (struct hdmi_phy*) ;} ;


 int stub1 (struct hdmi_phy*) ;

void msm_hdmi_phy_powerdown(struct hdmi_phy *phy)
{
 if (!phy || !phy->cfg->powerdown)
  return;

 phy->cfg->powerdown(phy);
}
