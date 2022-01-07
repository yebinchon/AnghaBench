
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {unsigned int irq_flags; } ;
struct madera {int irq; TYPE_2__* irq_dev; int irq_data; int regmap; TYPE_1__ pdata; } ;
struct irq_data {int dummy; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;
 unsigned int IRQF_TRIGGER_FALLING ;
 unsigned int IRQF_TRIGGER_HIGH ;
 unsigned int IRQF_TRIGGER_LOW ;
 unsigned int IRQF_TRIGGER_RISING ;
 unsigned int IRQ_TYPE_NONE ;
 int MADERA_IRQ1_CTRL ;
 int MADERA_IRQ_POL_MASK ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct madera* dev_get_drvdata (int ) ;
 struct irq_data* irq_get_irq_data (int) ;
 unsigned int irqd_get_trigger_type (struct irq_data*) ;
 int madera_irq_chip ;
 int regmap_add_irq_chip (int ,int,int ,int ,int *,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int madera_irq_probe(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);
 struct irq_data *irq_data;
 unsigned int irq_flags = 0;
 int ret;

 dev_dbg(&pdev->dev, "probe\n");





 irq_flags = madera->pdata.irq_flags;
 if (!irq_flags) {
  irq_data = irq_get_irq_data(madera->irq);
  if (!irq_data) {
   dev_err(&pdev->dev, "Invalid IRQ: %d\n", madera->irq);
   return -EINVAL;
  }

  irq_flags = irqd_get_trigger_type(irq_data);


  if (irq_flags == IRQ_TYPE_NONE)
   irq_flags = IRQF_TRIGGER_LOW;
 }

 if (irq_flags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING)) {
  dev_err(&pdev->dev, "Host interrupt not level-triggered\n");
  return -EINVAL;
 }





 if (irq_flags & IRQF_TRIGGER_HIGH) {
  ret = regmap_update_bits(madera->regmap, MADERA_IRQ1_CTRL,
      MADERA_IRQ_POL_MASK, 0);
  if (ret) {
   dev_err(&pdev->dev,
    "Failed to set IRQ polarity: %d\n", ret);
   return ret;
  }
 }





 ret = regmap_add_irq_chip(madera->regmap, madera->irq, IRQF_ONESHOT, 0,
      &madera_irq_chip, &madera->irq_data);
 if (ret) {
  dev_err(&pdev->dev, "add_irq_chip failed: %d\n", ret);
  return ret;
 }


 madera->irq_dev = &pdev->dev;

 return 0;
}
