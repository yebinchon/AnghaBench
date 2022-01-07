
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hi6220_mbox {scalar_t__ base; } ;


 scalar_t__ MBOX_MODE_REG (unsigned int) ;
 int MBOX_STATE_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mbox_set_state(struct hi6220_mbox *mbox,
      unsigned int slot, u32 val)
{
 u32 status;

 status = readl(mbox->base + MBOX_MODE_REG(slot));
 status = (status & ~MBOX_STATE_MASK) | val;
 writel(status, mbox->base + MBOX_MODE_REG(slot));
}
