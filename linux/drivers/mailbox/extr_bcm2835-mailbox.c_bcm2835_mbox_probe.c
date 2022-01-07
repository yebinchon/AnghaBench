
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int txdone_poll; int txpoll_period; int num_chans; void* chans; struct device* dev; int * of_xlate; int * ops; } ;
struct bcm2835_mbox {TYPE_1__ controller; int regs; int lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bcm2835_mbox_chan_ops ;
 int bcm2835_mbox_index_xlate ;
 int bcm2835_mbox_irq ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_mbox_controller_register (struct device*,TYPE_1__*) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct bcm2835_mbox*) ;
 int irq_of_parse_and_map (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835_mbox*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bcm2835_mbox_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret = 0;
 struct resource *iomem;
 struct bcm2835_mbox *mbox;

 mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
 if (mbox == ((void*)0))
  return -ENOMEM;
 spin_lock_init(&mbox->lock);

 ret = devm_request_irq(dev, irq_of_parse_and_map(dev->of_node, 0),
          bcm2835_mbox_irq, 0, dev_name(dev), mbox);
 if (ret) {
  dev_err(dev, "Failed to register a mailbox IRQ handler: %d\n",
   ret);
  return -ENODEV;
 }

 iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mbox->regs = devm_ioremap_resource(&pdev->dev, iomem);
 if (IS_ERR(mbox->regs)) {
  ret = PTR_ERR(mbox->regs);
  dev_err(&pdev->dev, "Failed to remap mailbox regs: %d\n", ret);
  return ret;
 }

 mbox->controller.txdone_poll = 1;
 mbox->controller.txpoll_period = 5;
 mbox->controller.ops = &bcm2835_mbox_chan_ops;
 mbox->controller.of_xlate = &bcm2835_mbox_index_xlate;
 mbox->controller.dev = dev;
 mbox->controller.num_chans = 1;
 mbox->controller.chans = devm_kzalloc(dev,
  sizeof(*mbox->controller.chans), GFP_KERNEL);
 if (!mbox->controller.chans)
  return -ENOMEM;

 ret = devm_mbox_controller_register(dev, &mbox->controller);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, mbox);
 dev_info(dev, "mailbox enabled\n");

 return ret;
}
