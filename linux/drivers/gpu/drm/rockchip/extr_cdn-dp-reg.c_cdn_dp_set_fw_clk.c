
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {scalar_t__ regs; } ;


 scalar_t__ SW_CLK_H ;
 int writel (unsigned long,scalar_t__) ;

void cdn_dp_set_fw_clk(struct cdn_dp_device *dp, unsigned long clk)
{
 writel(clk / 1000000, dp->regs + SW_CLK_H);
}
