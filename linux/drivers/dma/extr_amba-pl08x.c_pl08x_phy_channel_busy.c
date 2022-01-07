
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_phy_chan {scalar_t__ reg_config; int id; scalar_t__ reg_busy; } ;


 unsigned int BIT (int ) ;
 unsigned int PL080_CONFIG_ACTIVE ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int pl08x_phy_channel_busy(struct pl08x_phy_chan *ch)
{
 unsigned int val;


 if (ch->reg_busy) {
  val = readl(ch->reg_busy);
  return !!(val & BIT(ch->id));
 }
 val = readl(ch->reg_config);
 return val & PL080_CONFIG_ACTIVE;
}
