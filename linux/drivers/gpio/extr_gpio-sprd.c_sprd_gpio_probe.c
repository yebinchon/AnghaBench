
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gpio_irq_chip {int num_parents; int* parents; struct sprd_gpio* parent_handler_data; int parent_handler; int default_type; int handler; int * chip; } ;
struct TYPE_7__ {int base; struct gpio_irq_chip irq; int direction_output; int direction_input; int set; int get; int free; int request; int of_node; TYPE_1__* parent; int ngpio; int label; } ;
struct sprd_gpio {int irq; TYPE_3__ chip; int lock; int base; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPRD_GPIO_NR ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_name (TYPE_1__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct sprd_gpio*) ;
 struct sprd_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int handle_bad_irq ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_gpio*) ;
 int spin_lock_init (int *) ;
 int sprd_gpio_direction_input ;
 int sprd_gpio_direction_output ;
 int sprd_gpio_free ;
 int sprd_gpio_get ;
 int sprd_gpio_irq_handler ;
 int sprd_gpio_irqchip ;
 int sprd_gpio_request ;
 int sprd_gpio_set ;

__attribute__((used)) static int sprd_gpio_probe(struct platform_device *pdev)
{
 struct gpio_irq_chip *irq;
 struct sprd_gpio *sprd_gpio;
 int ret;

 sprd_gpio = devm_kzalloc(&pdev->dev, sizeof(*sprd_gpio), GFP_KERNEL);
 if (!sprd_gpio)
  return -ENOMEM;

 sprd_gpio->irq = platform_get_irq(pdev, 0);
 if (sprd_gpio->irq < 0)
  return sprd_gpio->irq;

 sprd_gpio->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(sprd_gpio->base))
  return PTR_ERR(sprd_gpio->base);

 spin_lock_init(&sprd_gpio->lock);

 sprd_gpio->chip.label = dev_name(&pdev->dev);
 sprd_gpio->chip.ngpio = SPRD_GPIO_NR;
 sprd_gpio->chip.base = -1;
 sprd_gpio->chip.parent = &pdev->dev;
 sprd_gpio->chip.of_node = pdev->dev.of_node;
 sprd_gpio->chip.request = sprd_gpio_request;
 sprd_gpio->chip.free = sprd_gpio_free;
 sprd_gpio->chip.get = sprd_gpio_get;
 sprd_gpio->chip.set = sprd_gpio_set;
 sprd_gpio->chip.direction_input = sprd_gpio_direction_input;
 sprd_gpio->chip.direction_output = sprd_gpio_direction_output;

 irq = &sprd_gpio->chip.irq;
 irq->chip = &sprd_gpio_irqchip;
 irq->handler = handle_bad_irq;
 irq->default_type = IRQ_TYPE_NONE;
 irq->parent_handler = sprd_gpio_irq_handler;
 irq->parent_handler_data = sprd_gpio;
 irq->num_parents = 1;
 irq->parents = &sprd_gpio->irq;

 ret = devm_gpiochip_add_data(&pdev->dev, &sprd_gpio->chip, sprd_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, sprd_gpio);
 return 0;
}
