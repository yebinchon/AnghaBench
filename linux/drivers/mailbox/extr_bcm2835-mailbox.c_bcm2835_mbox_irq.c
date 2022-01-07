
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mbox_chan {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct mbox_chan* chans; struct device* dev; } ;
struct bcm2835_mbox {scalar_t__ regs; TYPE_1__ controller; } ;
typedef int irqreturn_t ;


 int ARM_MS_EMPTY ;
 int IRQ_HANDLED ;
 scalar_t__ MAIL0_RD ;
 scalar_t__ MAIL0_STA ;
 int dev_dbg (struct device*,char*,int) ;
 int mbox_chan_received_data (struct mbox_chan*,int*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t bcm2835_mbox_irq(int irq, void *dev_id)
{
 struct bcm2835_mbox *mbox = dev_id;
 struct device *dev = mbox->controller.dev;
 struct mbox_chan *link = &mbox->controller.chans[0];

 while (!(readl(mbox->regs + MAIL0_STA) & ARM_MS_EMPTY)) {
  u32 msg = readl(mbox->regs + MAIL0_RD);
  dev_dbg(dev, "Reply 0x%08X\n", msg);
  mbox_chan_received_data(link, &msg);
 }
 return IRQ_HANDLED;
}
