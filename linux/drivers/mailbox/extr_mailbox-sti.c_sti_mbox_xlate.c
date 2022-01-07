
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_mbox_pdata {unsigned int num_inst; unsigned int num_chan; } ;
struct sti_mbox_device {scalar_t__ dev; int name; } ;
struct sti_channel {unsigned int instance; unsigned int channel; struct sti_mbox_device* mdev; } ;
struct of_phandle_args {unsigned int* args; } ;
struct mbox_controller {scalar_t__ dev; int num_chans; struct mbox_chan* chans; } ;
struct mbox_chan {struct sti_channel* con_priv; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct mbox_chan* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_err (scalar_t__,char*,...) ;
 struct sti_mbox_device* dev_get_drvdata (scalar_t__) ;
 struct sti_mbox_pdata* dev_get_platdata (scalar_t__) ;
 int dev_info (scalar_t__,char*,int ,unsigned int,unsigned int) ;
 struct sti_channel* devm_kzalloc (scalar_t__,int,int ) ;

__attribute__((used)) static struct mbox_chan *sti_mbox_xlate(struct mbox_controller *mbox,
     const struct of_phandle_args *spec)
{
 struct sti_mbox_device *mdev = dev_get_drvdata(mbox->dev);
 struct sti_mbox_pdata *pdata = dev_get_platdata(mdev->dev);
 struct sti_channel *chan_info;
 struct mbox_chan *chan = ((void*)0);
 unsigned int instance = spec->args[0];
 unsigned int channel = spec->args[1];
 int i;


 if (instance >= pdata->num_inst || channel >= pdata->num_chan) {
  dev_err(mbox->dev,
   "Invalid channel requested instance: %d channel: %d\n",
   instance, channel);
  return ERR_PTR(-EINVAL);
 }

 for (i = 0; i < mbox->num_chans; i++) {
  chan_info = mbox->chans[i].con_priv;


  if (chan_info &&
      mbox->dev == chan_info->mdev->dev &&
      instance == chan_info->instance &&
      channel == chan_info->channel) {

   dev_err(mbox->dev, "Channel in use\n");
   return ERR_PTR(-EBUSY);
  }





  if (!chan && !chan_info)
   chan = &mbox->chans[i];
 }

 if (!chan) {
  dev_err(mbox->dev, "No free channels left\n");
  return ERR_PTR(-EBUSY);
 }

 chan_info = devm_kzalloc(mbox->dev, sizeof(*chan_info), GFP_KERNEL);
 if (!chan_info)
  return ERR_PTR(-ENOMEM);

 chan_info->mdev = mdev;
 chan_info->instance = instance;
 chan_info->channel = channel;

 chan->con_priv = chan_info;

 dev_info(mbox->dev,
   "Mbox: %s: Created channel: instance: %d channel: %d\n",
   mdev->name, instance, channel);

 return chan;
}
