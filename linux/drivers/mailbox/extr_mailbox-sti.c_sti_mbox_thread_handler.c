
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mbox_pdata {unsigned int num_inst; } ;
struct sti_mbox_device {int dev; } ;
struct mbox_chan {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct sti_mbox_pdata* dev_get_platdata (int ) ;
 int mbox_chan_received_data (struct mbox_chan*,int *) ;
 int sti_mbox_clear_irq (struct mbox_chan*) ;
 int sti_mbox_enable_channel (struct mbox_chan*) ;
 struct mbox_chan* sti_mbox_irq_to_channel (struct sti_mbox_device*,unsigned int) ;

__attribute__((used)) static irqreturn_t sti_mbox_thread_handler(int irq, void *data)
{
 struct sti_mbox_device *mdev = data;
 struct sti_mbox_pdata *pdata = dev_get_platdata(mdev->dev);
 struct mbox_chan *chan;
 unsigned int instance;

 for (instance = 0; instance < pdata->num_inst; instance++) {
keep_looking:
  chan = sti_mbox_irq_to_channel(mdev, instance);
  if (!chan)
   continue;

  mbox_chan_received_data(chan, ((void*)0));
  sti_mbox_clear_irq(chan);
  sti_mbox_enable_channel(chan);
  goto keep_looking;
 }

 return IRQ_HANDLED;
}
