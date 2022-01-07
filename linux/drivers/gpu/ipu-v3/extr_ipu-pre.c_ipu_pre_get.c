
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_pre {int in_use; scalar_t__ regs; } ;


 int EBUSY ;
 scalar_t__ IPU_PRE_CTRL ;
 int IPU_PRE_CTRL_HANDSHAKE_ABORT_SKIP_EN ;
 int IPU_PRE_CTRL_HANDSHAKE_EN ;
 int IPU_PRE_CTRL_SDW_UPDATE ;
 int IPU_PRE_CTRL_TPR_REST_SEL ;
 int writel (int,scalar_t__) ;

int ipu_pre_get(struct ipu_pre *pre)
{
 u32 val;

 if (pre->in_use)
  return -EBUSY;


 writel(0, pre->regs + IPU_PRE_CTRL);


 val = IPU_PRE_CTRL_HANDSHAKE_ABORT_SKIP_EN |
       IPU_PRE_CTRL_HANDSHAKE_EN |
       IPU_PRE_CTRL_TPR_REST_SEL |
       IPU_PRE_CTRL_SDW_UPDATE;
 writel(val, pre->regs + IPU_PRE_CTRL);

 pre->in_use = 1;
 return 0;
}
