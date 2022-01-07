
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int* args; } ;
struct mbox_controller {int dummy; } ;
struct mbox_chan {int dummy; } ;
struct hi3660_mbox {struct mbox_chan* chan; struct hi3660_chan_info* mchan; int dev; } ;
struct hi3660_chan_info {unsigned int dst_irq; unsigned int ack_irq; } ;


 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;
 unsigned int MBOX_CHAN_MAX ;
 int dev_err (int ,char*,unsigned int) ;
 struct hi3660_mbox* to_hi3660_mbox (struct mbox_controller*) ;

__attribute__((used)) static struct mbox_chan *hi3660_mbox_xlate(struct mbox_controller *controller,
        const struct of_phandle_args *spec)
{
 struct hi3660_mbox *mbox = to_hi3660_mbox(controller);
 struct hi3660_chan_info *mchan;
 unsigned int ch = spec->args[0];

 if (ch >= MBOX_CHAN_MAX) {
  dev_err(mbox->dev, "Invalid channel idx %d\n", ch);
  return ERR_PTR(-EINVAL);
 }

 mchan = &mbox->mchan[ch];
 mchan->dst_irq = spec->args[1];
 mchan->ack_irq = spec->args[2];

 return &mbox->chan[ch];
}
