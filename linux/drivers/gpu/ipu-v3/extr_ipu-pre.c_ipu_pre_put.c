
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_pre {int in_use; scalar_t__ regs; } ;


 scalar_t__ IPU_PRE_CTRL ;
 int IPU_PRE_CTRL_SFTRST ;
 int writel (int ,scalar_t__) ;

void ipu_pre_put(struct ipu_pre *pre)
{
 writel(IPU_PRE_CTRL_SFTRST, pre->regs + IPU_PRE_CTRL);

 pre->in_use = 0;
}
