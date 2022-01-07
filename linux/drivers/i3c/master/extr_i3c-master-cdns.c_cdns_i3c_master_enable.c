
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_i3c_master {scalar_t__ regs; } ;


 scalar_t__ CTRL ;
 int CTRL_DEV_EN ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_i3c_master_enable(struct cdns_i3c_master *master)
{
 writel(readl(master->regs + CTRL) | CTRL_DEV_EN, master->regs + CTRL);
}
