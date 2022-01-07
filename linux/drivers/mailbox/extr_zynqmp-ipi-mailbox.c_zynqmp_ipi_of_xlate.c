
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int* args; } ;
struct mbox_controller {struct mbox_chan* chans; struct device* dev; } ;
struct mbox_chan {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;
 unsigned int IPI_MB_CHNL_RX ;
 unsigned int IPI_MB_CHNL_TX ;
 int dev_err (struct device*,char*,unsigned int) ;

__attribute__((used)) static struct mbox_chan *zynqmp_ipi_of_xlate(struct mbox_controller *mbox,
          const struct of_phandle_args *p)
{
 struct mbox_chan *chan;
 struct device *dev = mbox->dev;
 unsigned int chan_type;


 chan_type = p->args[0];
 if (chan_type != IPI_MB_CHNL_TX && chan_type != IPI_MB_CHNL_RX) {
  dev_err(dev, "req chnl failure: invalid chnl type %u.\n",
   chan_type);
  return ERR_PTR(-EINVAL);
 }
 chan = &mbox->chans[chan_type];
 return chan;
}
