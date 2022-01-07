
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_chans; } ;
struct rockchip_mbox {scalar_t__ mbox_base; TYPE_1__* chans; TYPE_2__ mbox; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int irq; } ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ MAILBOX_B2A_STATUS ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t rockchip_mbox_irq(int irq, void *dev_id)
{
 int idx;
 struct rockchip_mbox *mb = (struct rockchip_mbox *)dev_id;
 u32 status = readl_relaxed(mb->mbox_base + MAILBOX_B2A_STATUS);

 for (idx = 0; idx < mb->mbox.num_chans; idx++) {
  if ((status & (1 << idx)) && (irq == mb->chans[idx].irq)) {

   writel_relaxed(1 << idx,
           mb->mbox_base + MAILBOX_B2A_STATUS);
   return IRQ_WAKE_THREAD;
  }
 }

 return IRQ_NONE;
}
