
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int* args; } ;
struct mbox_controller {int dev; } ;
struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {unsigned int dst_irq; unsigned int ack_irq; } ;
struct hi6220_mbox {unsigned int chan_num; void** irq_map_chan; int dev; struct mbox_chan* chan; } ;


 int EBUSY ;
 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;
 int dev_err (int ,char*,...) ;
 struct hi6220_mbox* dev_get_drvdata (int ) ;

__attribute__((used)) static struct mbox_chan *hi6220_mbox_xlate(struct mbox_controller *controller,
        const struct of_phandle_args *spec)
{
 struct hi6220_mbox *mbox = dev_get_drvdata(controller->dev);
 struct hi6220_mbox_chan *mchan;
 struct mbox_chan *chan;
 unsigned int i = spec->args[0];
 unsigned int dst_irq = spec->args[1];
 unsigned int ack_irq = spec->args[2];


 if (i >= mbox->chan_num || dst_irq >= mbox->chan_num ||
     ack_irq >= mbox->chan_num) {
  dev_err(mbox->dev,
   "Invalid channel idx %d dst_irq %d ack_irq %d\n",
   i, dst_irq, ack_irq);
  return ERR_PTR(-EINVAL);
 }


 chan = &mbox->chan[i];
 if (mbox->irq_map_chan[ack_irq] == (void *)chan) {
  dev_err(mbox->dev, "Channel in use\n");
  return ERR_PTR(-EBUSY);
 }

 mchan = chan->con_priv;
 mchan->dst_irq = dst_irq;
 mchan->ack_irq = ack_irq;

 mbox->irq_map_chan[ack_irq] = (void *)chan;
 return chan;
}
