
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_pre {scalar_t__ regs; } ;


 scalar_t__ IPU_PRE_CTRL ;
 int IPU_PRE_CTRL_SDW_UPDATE ;
 int readl_relaxed (scalar_t__) ;

bool ipu_pre_update_pending(struct ipu_pre *pre)
{
 return !!(readl_relaxed(pre->regs + IPU_PRE_CTRL) &
    IPU_PRE_CTRL_SDW_UPDATE);
}
