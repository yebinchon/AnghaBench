
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int num_chans; int txdone_irq; int txdone_poll; int txpoll_period; int of_xlate; int * ops; TYPE_1__* chans; struct device* dev; } ;
struct hi6220_mbox {int chan_num; scalar_t__ irq; int tx_irq_mode; TYPE_3__ controller; void* ipc; TYPE_2__* mchan; int ** irq_map_chan; TYPE_1__* chan; void* base; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int slot; struct hi6220_mbox* parent; } ;
struct TYPE_4__ {TYPE_2__* con_priv; } ;


 int ACK_INT_CLR_REG (void*) ;
 int ACK_INT_MSK_REG (void*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MBOX_CHAN_MAX ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct hi6220_mbox* devm_kzalloc (struct device*,int,int ) ;
 int devm_mbox_controller_register (struct device*,TYPE_3__*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct hi6220_mbox*) ;
 int hi6220_mbox_interrupt ;
 int hi6220_mbox_ops ;
 int hi6220_mbox_xlate ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct hi6220_mbox*) ;
 int writel (int,int ) ;

__attribute__((used)) static int hi6220_mbox_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct hi6220_mbox *mbox;
 struct resource *res;
 int i, err;

 mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;

 mbox->dev = dev;
 mbox->chan_num = MBOX_CHAN_MAX;
 mbox->mchan = devm_kcalloc(dev,
  mbox->chan_num, sizeof(*mbox->mchan), GFP_KERNEL);
 if (!mbox->mchan)
  return -ENOMEM;

 mbox->chan = devm_kcalloc(dev,
  mbox->chan_num, sizeof(*mbox->chan), GFP_KERNEL);
 if (!mbox->chan)
  return -ENOMEM;

 mbox->irq = platform_get_irq(pdev, 0);
 if (mbox->irq < 0)
  return mbox->irq;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mbox->ipc = devm_ioremap_resource(dev, res);
 if (IS_ERR(mbox->ipc)) {
  dev_err(dev, "ioremap ipc failed\n");
  return PTR_ERR(mbox->ipc);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 mbox->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(mbox->base)) {
  dev_err(dev, "ioremap buffer failed\n");
  return PTR_ERR(mbox->base);
 }

 err = devm_request_irq(dev, mbox->irq, hi6220_mbox_interrupt, 0,
   dev_name(dev), mbox);
 if (err) {
  dev_err(dev, "Failed to register a mailbox IRQ handler: %d\n",
   err);
  return -ENODEV;
 }

 mbox->controller.dev = dev;
 mbox->controller.chans = &mbox->chan[0];
 mbox->controller.num_chans = mbox->chan_num;
 mbox->controller.ops = &hi6220_mbox_ops;
 mbox->controller.of_xlate = hi6220_mbox_xlate;

 for (i = 0; i < mbox->chan_num; i++) {
  mbox->chan[i].con_priv = &mbox->mchan[i];
  mbox->irq_map_chan[i] = ((void*)0);

  mbox->mchan[i].parent = mbox;
  mbox->mchan[i].slot = i;
 }


 writel(0x0, ACK_INT_MSK_REG(mbox->ipc));
 writel(~0x0, ACK_INT_CLR_REG(mbox->ipc));


 if (of_find_property(node, "hi6220,mbox-tx-noirq", ((void*)0)))
  mbox->tx_irq_mode = 0;
 else
  mbox->tx_irq_mode = 1;

 if (mbox->tx_irq_mode)
  mbox->controller.txdone_irq = 1;
 else {
  mbox->controller.txdone_poll = 1;
  mbox->controller.txpoll_period = 5;
 }

 err = devm_mbox_controller_register(dev, &mbox->controller);
 if (err) {
  dev_err(dev, "Failed to register mailbox %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, mbox);
 dev_info(dev, "Mailbox enabled\n");
 return 0;
}
