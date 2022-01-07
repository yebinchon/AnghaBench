
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_mbox {scalar_t__ mbox_base; } ;


 int INT_SPACE_MSK ;
 scalar_t__ MAILBOX_INTMASK_REG ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void altera_mbox_tx_intmask(struct altera_mbox *mbox, bool enable)
{
 u32 mask;

 mask = readl_relaxed(mbox->mbox_base + MAILBOX_INTMASK_REG);
 if (enable)
  mask |= INT_SPACE_MSK;
 else
  mask &= ~INT_SPACE_MSK;
 writel_relaxed(mask, mbox->mbox_base + MAILBOX_INTMASK_REG);
}
