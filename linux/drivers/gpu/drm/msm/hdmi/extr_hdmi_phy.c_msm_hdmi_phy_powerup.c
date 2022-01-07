
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_phy {TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* powerup ) (struct hdmi_phy*,unsigned long) ;} ;


 int stub1 (struct hdmi_phy*,unsigned long) ;

void msm_hdmi_phy_powerup(struct hdmi_phy *phy, unsigned long int pixclock)
{
 if (!phy || !phy->cfg->powerup)
  return;

 phy->cfg->powerup(phy, pixclock);
}
