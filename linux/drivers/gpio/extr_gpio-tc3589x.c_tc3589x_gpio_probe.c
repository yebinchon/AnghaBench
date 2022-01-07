
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int base; struct device_node* of_node; TYPE_4__* parent; int ngpio; } ;
struct tc3589x_gpio {TYPE_1__ chip; struct tc3589x* tc3589x; TYPE_4__* dev; int irq_lock; } ;
struct tc3589x {int num_gpio; } ;
struct TYPE_10__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQ_TYPE_NONE ;
 int TC3589x_RSTCTRL ;
 int TC3589x_RSTCTRL_GPIRST ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct tc3589x* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_4__*,TYPE_1__*,struct tc3589x_gpio*) ;
 struct tc3589x_gpio* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_4__*,int,int *,int ,int ,char*,struct tc3589x_gpio*) ;
 int gpiochip_irqchip_add_nested (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_set_nested_irqchip (TYPE_1__*,int *,int) ;
 int handle_simple_irq ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tc3589x_gpio*) ;
 int tc3589x_gpio_irq ;
 int tc3589x_gpio_irq_chip ;
 int tc3589x_set_bits (struct tc3589x*,int ,int ,int ) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int tc3589x_gpio_probe(struct platform_device *pdev)
{
 struct tc3589x *tc3589x = dev_get_drvdata(pdev->dev.parent);
 struct device_node *np = pdev->dev.of_node;
 struct tc3589x_gpio *tc3589x_gpio;
 int ret;
 int irq;

 if (!np) {
  dev_err(&pdev->dev, "No Device Tree node found\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 tc3589x_gpio = devm_kzalloc(&pdev->dev, sizeof(struct tc3589x_gpio),
        GFP_KERNEL);
 if (!tc3589x_gpio)
  return -ENOMEM;

 mutex_init(&tc3589x_gpio->irq_lock);

 tc3589x_gpio->dev = &pdev->dev;
 tc3589x_gpio->tc3589x = tc3589x;

 tc3589x_gpio->chip = template_chip;
 tc3589x_gpio->chip.ngpio = tc3589x->num_gpio;
 tc3589x_gpio->chip.parent = &pdev->dev;
 tc3589x_gpio->chip.base = -1;
 tc3589x_gpio->chip.of_node = np;


 ret = tc3589x_set_bits(tc3589x, TC3589x_RSTCTRL,
          TC3589x_RSTCTRL_GPIRST, 0);
 if (ret < 0)
  return ret;

 ret = devm_request_threaded_irq(&pdev->dev,
     irq, ((void*)0), tc3589x_gpio_irq,
     IRQF_ONESHOT, "tc3589x-gpio",
     tc3589x_gpio);
 if (ret) {
  dev_err(&pdev->dev, "unable to get irq: %d\n", ret);
  return ret;
 }

 ret = devm_gpiochip_add_data(&pdev->dev, &tc3589x_gpio->chip,
         tc3589x_gpio);
 if (ret) {
  dev_err(&pdev->dev, "unable to add gpiochip: %d\n", ret);
  return ret;
 }

 ret = gpiochip_irqchip_add_nested(&tc3589x_gpio->chip,
        &tc3589x_gpio_irq_chip,
        0,
        handle_simple_irq,
        IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&pdev->dev,
   "could not connect irqchip to gpiochip\n");
  return ret;
 }

 gpiochip_set_nested_irqchip(&tc3589x_gpio->chip,
        &tc3589x_gpio_irq_chip,
        irq);

 platform_set_drvdata(pdev, tc3589x_gpio);

 return 0;
}
