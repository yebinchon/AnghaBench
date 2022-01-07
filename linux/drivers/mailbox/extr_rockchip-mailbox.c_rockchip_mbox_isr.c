
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_mbox_msg {int cmd; } ;
struct TYPE_4__ {int num_chans; int dev; int * chans; } ;
struct rockchip_mbox {TYPE_2__ mbox; TYPE_1__* chans; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int irq; struct rockchip_mbox_msg* msg; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*,int) ;
 int mbox_chan_received_data (int *,struct rockchip_mbox_msg*) ;

__attribute__((used)) static irqreturn_t rockchip_mbox_isr(int irq, void *dev_id)
{
 int idx;
 struct rockchip_mbox_msg *msg = ((void*)0);
 struct rockchip_mbox *mb = (struct rockchip_mbox *)dev_id;

 for (idx = 0; idx < mb->mbox.num_chans; idx++) {
  if (irq != mb->chans[idx].irq)
   continue;

  msg = mb->chans[idx].msg;
  if (!msg) {
   dev_err(mb->mbox.dev,
    "Chan[%d]: B2A message is NULL\n", idx);
   break;
  }

  mbox_chan_received_data(&mb->mbox.chans[idx], msg);
  mb->chans[idx].msg = ((void*)0);

  dev_dbg(mb->mbox.dev, "Chan[%d]: B2A message, cmd 0x%08x\n",
   idx, msg->cmd);

  break;
 }

 return IRQ_HANDLED;
}
