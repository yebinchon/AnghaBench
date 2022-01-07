
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mbox_chan {void* con_priv; } ;
struct TYPE_2__ {unsigned long num_chans; int of_xlate; int * ops; struct mbox_chan* chans; struct device* dev; } ;
struct hi3660_mbox {TYPE_1__ controller; struct mbox_chan* chan; struct device* dev; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 unsigned long MBOX_CHAN_MAX ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct hi3660_mbox* devm_kzalloc (struct device*,int,int ) ;
 int devm_mbox_controller_register (struct device*,TYPE_1__*) ;
 int hi3660_mbox_ops ;
 int hi3660_mbox_xlate ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hi3660_mbox*) ;

__attribute__((used)) static int hi3660_mbox_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct hi3660_mbox *mbox;
 struct mbox_chan *chan;
 struct resource *res;
 unsigned long ch;
 int err;

 mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mbox->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(mbox->base))
  return PTR_ERR(mbox->base);

 mbox->dev = dev;
 mbox->controller.dev = dev;
 mbox->controller.chans = mbox->chan;
 mbox->controller.num_chans = MBOX_CHAN_MAX;
 mbox->controller.ops = &hi3660_mbox_ops;
 mbox->controller.of_xlate = hi3660_mbox_xlate;


 chan = mbox->chan;
 for (ch = 0; ch < MBOX_CHAN_MAX; ch++)
  chan[ch].con_priv = (void *)ch;

 err = devm_mbox_controller_register(dev, &mbox->controller);
 if (err) {
  dev_err(dev, "Failed to register mailbox %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, mbox);
 dev_info(dev, "Mailbox enabled\n");
 return 0;
}
