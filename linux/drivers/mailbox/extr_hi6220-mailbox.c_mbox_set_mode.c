
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hi6220_mbox {scalar_t__ base; } ;


 int MBOX_ACK_CONFIG_MASK ;
 scalar_t__ MBOX_MODE_REG (unsigned int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mbox_set_mode(struct hi6220_mbox *mbox,
     unsigned int slot, u32 val)
{
 u32 mode;

 mode = readl(mbox->base + MBOX_MODE_REG(slot));
 mode = (mode & ~MBOX_ACK_CONFIG_MASK) | val;
 writel(mode, mbox->base + MBOX_MODE_REG(slot));
}
