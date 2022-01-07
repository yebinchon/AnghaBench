
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timbgpio_platform_data {int nr_pins; scalar_t__ irq_base; int gpio_base; } ;
struct gpio_chip {int ngpio; int can_sleep; int base; int * dbg_show; int * to_irq; int set; int direction_output; int get; int direction_input; struct device* parent; int owner; int label; } ;
struct timbgpio {scalar_t__ irq_base; scalar_t__ membase; struct gpio_chip gpio; int lock; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ TGPIO_IER ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct timbgpio_platform_data* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,struct timbgpio*) ;
 struct timbgpio* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int handle_simple_irq ;
 int iowrite32 (int,scalar_t__) ;
 int irq_clear_status_flags (scalar_t__,int) ;
 int irq_set_chained_handler_and_data (int,int ,struct timbgpio*) ;
 int irq_set_chip_and_handler (scalar_t__,int *,int ) ;
 int irq_set_chip_data (scalar_t__,struct timbgpio*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct timbgpio*) ;
 int spin_lock_init (int *) ;
 int timbgpio_gpio_direction_input ;
 int timbgpio_gpio_direction_output ;
 int timbgpio_gpio_get ;
 int timbgpio_gpio_set ;
 int timbgpio_irq ;
 int timbgpio_irqchip ;
 int * timbgpio_to_irq ;

__attribute__((used)) static int timbgpio_probe(struct platform_device *pdev)
{
 int err, i;
 struct device *dev = &pdev->dev;
 struct gpio_chip *gc;
 struct timbgpio *tgpio;
 struct timbgpio_platform_data *pdata = dev_get_platdata(&pdev->dev);
 int irq = platform_get_irq(pdev, 0);

 if (!pdata || pdata->nr_pins > 32) {
  dev_err(dev, "Invalid platform data\n");
  return -EINVAL;
 }

 tgpio = devm_kzalloc(dev, sizeof(*tgpio), GFP_KERNEL);
 if (!tgpio)
  return -EINVAL;

 tgpio->irq_base = pdata->irq_base;

 spin_lock_init(&tgpio->lock);

 tgpio->membase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(tgpio->membase))
  return PTR_ERR(tgpio->membase);

 gc = &tgpio->gpio;

 gc->label = dev_name(&pdev->dev);
 gc->owner = THIS_MODULE;
 gc->parent = &pdev->dev;
 gc->direction_input = timbgpio_gpio_direction_input;
 gc->get = timbgpio_gpio_get;
 gc->direction_output = timbgpio_gpio_direction_output;
 gc->set = timbgpio_gpio_set;
 gc->to_irq = (irq >= 0 && tgpio->irq_base > 0) ? timbgpio_to_irq : ((void*)0);
 gc->dbg_show = ((void*)0);
 gc->base = pdata->gpio_base;
 gc->ngpio = pdata->nr_pins;
 gc->can_sleep = 0;

 err = devm_gpiochip_add_data(&pdev->dev, gc, tgpio);
 if (err)
  return err;

 platform_set_drvdata(pdev, tgpio);


 iowrite32(0x0, tgpio->membase + TGPIO_IER);

 if (irq < 0 || tgpio->irq_base <= 0)
  return 0;

 for (i = 0; i < pdata->nr_pins; i++) {
  irq_set_chip_and_handler(tgpio->irq_base + i,
   &timbgpio_irqchip, handle_simple_irq);
  irq_set_chip_data(tgpio->irq_base + i, tgpio);
  irq_clear_status_flags(tgpio->irq_base + i, IRQ_NOREQUEST | IRQ_NOPROBE);
 }

 irq_set_chained_handler_and_data(irq, timbgpio_irq, tgpio);

 return 0;
}
