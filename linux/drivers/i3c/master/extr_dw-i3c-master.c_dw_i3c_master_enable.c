
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i3c_master {scalar_t__ regs; } ;


 scalar_t__ DEVICE_CTRL ;
 int DEV_CTRL_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void dw_i3c_master_enable(struct dw_i3c_master *master)
{
 writel(readl(master->regs + DEVICE_CTRL) | DEV_CTRL_ENABLE,
        master->regs + DEVICE_CTRL);
}
