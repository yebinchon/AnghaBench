
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct TYPE_2__ {int num_chans; int txdone_irq; int * ops; struct mbox_chan* chans; int * dev; } ;
struct a37xx_mbox {scalar_t__ irq; TYPE_1__ controller; int * dev; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int a37xx_mbox_ops ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_mbox_controller_register (int *,TYPE_1__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct a37xx_mbox*) ;

__attribute__((used)) static int armada_37xx_mbox_probe(struct platform_device *pdev)
{
 struct a37xx_mbox *mbox;
 struct resource *regs;
 struct mbox_chan *chans;
 int ret;

 mbox = devm_kzalloc(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;


 chans = devm_kzalloc(&pdev->dev, sizeof(*chans), GFP_KERNEL);
 if (!chans)
  return -ENOMEM;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 mbox->base = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(mbox->base)) {
  dev_err(&pdev->dev, "ioremap failed\n");
  return PTR_ERR(mbox->base);
 }

 mbox->irq = platform_get_irq(pdev, 0);
 if (mbox->irq < 0) {
  dev_err(&pdev->dev, "Cannot get irq\n");
  return mbox->irq;
 }

 mbox->dev = &pdev->dev;


 chans[0].con_priv = mbox;
 mbox->controller.dev = mbox->dev;
 mbox->controller.num_chans = 1;
 mbox->controller.chans = chans;
 mbox->controller.ops = &a37xx_mbox_ops;
 mbox->controller.txdone_irq = 1;

 ret = devm_mbox_controller_register(mbox->dev, &mbox->controller);
 if (ret) {
  dev_err(&pdev->dev, "Could not register mailbox controller\n");
  return ret;
 }

 platform_set_drvdata(pdev, mbox);
 return ret;
}
