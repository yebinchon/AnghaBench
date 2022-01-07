
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct altera_mbox {scalar_t__ mbox_base; } ;


 scalar_t__ MAILBOX_PTR_REG ;
 scalar_t__ MBOX_MAGIC ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool altera_mbox_is_sender(struct altera_mbox *mbox)
{
 u32 reg;




 writel_relaxed(0xA5A5AA55, mbox->mbox_base + MAILBOX_PTR_REG);
 reg = readl_relaxed(mbox->mbox_base + MAILBOX_PTR_REG);
 if (reg == 0xA5A5AA55) {

  writel_relaxed(0, mbox->mbox_base + MAILBOX_PTR_REG);
  return 1;
 }
 return 0;
}
