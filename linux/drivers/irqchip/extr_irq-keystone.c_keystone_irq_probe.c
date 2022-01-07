
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {char* name; int irq_unmask; int irq_mask; int irq_ack; } ;
struct keystone_irq_device {scalar_t__ irq; int mask; int irqd; int wa_lock; TYPE_1__ chip; struct device* dev; int devctrl_offset; int devctrl_regs; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KEYSTONE_N_IRQ ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 struct keystone_irq_device* devm_kzalloc (struct device*,int,int ) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct keystone_irq_device*) ;
 int irq_domain_remove (int ) ;
 int keystone_irq_ack ;
 int keystone_irq_handler ;
 int keystone_irq_ops ;
 int keystone_irq_setmask ;
 int keystone_irq_unmask ;
 int keystone_irq_writel (struct keystone_irq_device*,int) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct keystone_irq_device*) ;
 int raw_spin_lock_init (int *) ;
 int request_irq (int,int ,int ,int ,struct keystone_irq_device*) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int keystone_irq_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct keystone_irq_device *kirq;
 int ret;

 if (np == ((void*)0))
  return -EINVAL;

 kirq = devm_kzalloc(dev, sizeof(*kirq), GFP_KERNEL);
 if (!kirq)
  return -ENOMEM;

 kirq->devctrl_regs =
  syscon_regmap_lookup_by_phandle(np, "ti,syscon-dev");
 if (IS_ERR(kirq->devctrl_regs))
  return PTR_ERR(kirq->devctrl_regs);

 ret = of_property_read_u32_index(np, "ti,syscon-dev", 1,
      &kirq->devctrl_offset);
 if (ret) {
  dev_err(dev, "couldn't read the devctrl_offset offset!\n");
  return ret;
 }

 kirq->irq = platform_get_irq(pdev, 0);
 if (kirq->irq < 0)
  return kirq->irq;

 kirq->dev = dev;
 kirq->mask = ~0x0;
 kirq->chip.name = "keystone-irq";
 kirq->chip.irq_ack = keystone_irq_ack;
 kirq->chip.irq_mask = keystone_irq_setmask;
 kirq->chip.irq_unmask = keystone_irq_unmask;

 kirq->irqd = irq_domain_add_linear(np, KEYSTONE_N_IRQ,
        &keystone_irq_ops, kirq);
 if (!kirq->irqd) {
  dev_err(dev, "IRQ domain registration failed\n");
  return -ENODEV;
 }

 raw_spin_lock_init(&kirq->wa_lock);

 platform_set_drvdata(pdev, kirq);

 ret = request_irq(kirq->irq, keystone_irq_handler,
     0, dev_name(dev), kirq);
 if (ret) {
  irq_domain_remove(kirq->irqd);
  return ret;
 }


 keystone_irq_writel(kirq, ~0x0);

 dev_info(dev, "irqchip registered, nr_irqs %u\n", KEYSTONE_N_IRQ);

 return 0;
}
