
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct sti_mbox_pdata {int dummy; } ;
struct sti_mbox_device {int name; TYPE_1__* dev; int lock; struct mbox_controller* mbox; int base; } ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct sti_mbox_pdata* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mbox_controller {int txdone_irq; int txdone_poll; int txpoll_period; int num_chans; struct mbox_chan* chans; int of_xlate; TYPE_1__* dev; int * ops; } ;
struct mbox_chan {int dummy; } ;
struct device_node {int full_name; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int STI_MBOX_CHAN_MAX ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mbox_chan* devm_kcalloc (TYPE_1__*,int ,int,int ) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_mbox_controller_register (TYPE_1__*,struct mbox_controller*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int ,int ,int ,int ,struct sti_mbox_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_property_read_string (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sti_mbox_device*) ;
 int spin_lock_init (int *) ;
 int sti_mailbox_match ;
 int sti_mbox_irq_handler ;
 int sti_mbox_ops ;
 int sti_mbox_thread_handler ;
 int sti_mbox_xlate ;

__attribute__((used)) static int sti_mbox_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct mbox_controller *mbox;
 struct sti_mbox_device *mdev;
 struct device_node *np = pdev->dev.of_node;
 struct mbox_chan *chans;
 struct resource *res;
 int irq;
 int ret;

 match = of_match_device(sti_mailbox_match, &pdev->dev);
 if (!match) {
  dev_err(&pdev->dev, "No configuration found\n");
  return -ENODEV;
 }
 pdev->dev.platform_data = (struct sti_mbox_pdata *) match->data;

 mdev = devm_kzalloc(&pdev->dev, sizeof(*mdev), GFP_KERNEL);
 if (!mdev)
  return -ENOMEM;

 platform_set_drvdata(pdev, mdev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mdev->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mdev->base))
  return PTR_ERR(mdev->base);

 ret = of_property_read_string(np, "mbox-name", &mdev->name);
 if (ret)
  mdev->name = np->full_name;

 mbox = devm_kzalloc(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;

 chans = devm_kcalloc(&pdev->dev,
        STI_MBOX_CHAN_MAX, sizeof(*chans), GFP_KERNEL);
 if (!chans)
  return -ENOMEM;

 mdev->dev = &pdev->dev;
 mdev->mbox = mbox;

 spin_lock_init(&mdev->lock);


 mbox->txdone_irq = 0;
 mbox->txdone_poll = 1;
 mbox->txpoll_period = 100;
 mbox->ops = &sti_mbox_ops;
 mbox->dev = mdev->dev;
 mbox->of_xlate = sti_mbox_xlate;
 mbox->chans = chans;
 mbox->num_chans = STI_MBOX_CHAN_MAX;

 ret = devm_mbox_controller_register(&pdev->dev, mbox);
 if (ret)
  return ret;


 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_info(&pdev->dev,
    "%s: Registered Tx only Mailbox\n", mdev->name);
  return 0;
 }

 ret = devm_request_threaded_irq(&pdev->dev, irq,
     sti_mbox_irq_handler,
     sti_mbox_thread_handler,
     IRQF_ONESHOT, mdev->name, mdev);
 if (ret) {
  dev_err(&pdev->dev, "Can't claim IRQ %d\n", irq);
  return -EINVAL;
 }

 dev_info(&pdev->dev, "%s: Registered Tx/Rx Mailbox\n", mdev->name);

 return 0;
}
