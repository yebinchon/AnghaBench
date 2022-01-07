
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns_dsi {int direct_cmd_comp; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 scalar_t__ DIRECT_CMD_STS_CTL ;
 scalar_t__ DIRECT_CMD_STS_FLAG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t cdns_dsi_interrupt(int irq, void *data)
{
 struct cdns_dsi *dsi = data;
 irqreturn_t ret = IRQ_NONE;
 u32 flag, ctl;

 flag = readl(dsi->regs + DIRECT_CMD_STS_FLAG);
 if (flag) {
  ctl = readl(dsi->regs + DIRECT_CMD_STS_CTL);
  ctl &= ~flag;
  writel(ctl, dsi->regs + DIRECT_CMD_STS_CTL);
  complete(&dsi->direct_cmd_comp);
  ret = IRQ_HANDLED;
 }

 return ret;
}
