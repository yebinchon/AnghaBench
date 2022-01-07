
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pl08x_phy_chan {int id; int reg_config; int reg_control; scalar_t__ ftdmac020; } ;


 int FTDMAC020_CH_CSR_EN ;
 int PL080_CONFIG_HALT ;
 scalar_t__ pl08x_phy_channel_busy (struct pl08x_phy_chan*) ;
 int pr_err (char*,int ) ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void pl08x_pause_phy_chan(struct pl08x_phy_chan *ch)
{
 u32 val;
 int timeout;

 if (ch->ftdmac020) {

  val = readl(ch->reg_control);
  val &= ~FTDMAC020_CH_CSR_EN;
  writel(val, ch->reg_control);
  return;
 }


 val = readl(ch->reg_config);
 val |= PL080_CONFIG_HALT;
 writel(val, ch->reg_config);


 for (timeout = 1000; timeout; timeout--) {
  if (!pl08x_phy_channel_busy(ch))
   break;
  udelay(1);
 }
 if (pl08x_phy_channel_busy(ch))
  pr_err("pl08x: channel%u timeout waiting for pause\n", ch->id);
}
