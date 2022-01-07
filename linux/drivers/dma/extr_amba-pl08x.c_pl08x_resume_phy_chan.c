
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pl08x_phy_chan {int reg_config; int reg_control; scalar_t__ ftdmac020; } ;


 int FTDMAC020_CH_CSR_EN ;
 int PL080_CONFIG_HALT ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void pl08x_resume_phy_chan(struct pl08x_phy_chan *ch)
{
 u32 val;


 if (ch->ftdmac020) {
  val = readl(ch->reg_control);
  val |= FTDMAC020_CH_CSR_EN;
  writel(val, ch->reg_control);
  return;
 }


 val = readl(ch->reg_config);
 val &= ~PL080_CONFIG_HALT;
 writel(val, ch->reg_config);
}
