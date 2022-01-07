
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {char* label; int ngpio; int can_sleep; struct device* parent; scalar_t__ base; int to_irq; int set; int get; int direction_output; int direction_input; } ;
struct msic_gpio {int irq; scalar_t__ irq_base; TYPE_1__ chip; int buslock; struct platform_device* pdev; } ;
struct intel_msic_gpio_pdata {scalar_t__ gpio_base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MSIC_GPIO_IRQ_OFFSET ;
 int MSIC_NUM_GPIO ;
 int dev_err (struct device*,char*,...) ;
 struct intel_msic_gpio_pdata* dev_get_platdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct msic_gpio*) ;
 int gpiochip_add_data (TYPE_1__*,struct msic_gpio*) ;
 int handle_simple_irq ;
 int irq_set_chained_handler_and_data (int,int ,struct msic_gpio*) ;
 int irq_set_chip_and_handler (scalar_t__,int *,int ) ;
 int irq_set_chip_data (scalar_t__,struct msic_gpio*) ;
 int kfree (struct msic_gpio*) ;
 struct msic_gpio* kzalloc (int,int ) ;
 int msic_gpio_direction_input ;
 int msic_gpio_direction_output ;
 int msic_gpio_get ;
 int msic_gpio_irq_handler ;
 int msic_gpio_set ;
 int msic_gpio_to_irq ;
 int msic_irqchip ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int platform_msic_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct intel_msic_gpio_pdata *pdata = dev_get_platdata(dev);
 struct msic_gpio *mg;
 int irq = platform_get_irq(pdev, 0);
 int retval;
 int i;

 if (irq < 0) {
  dev_err(dev, "no IRQ line: %d\n", irq);
  return irq;
 }

 if (!pdata || !pdata->gpio_base) {
  dev_err(dev, "incorrect or missing platform data\n");
  return -EINVAL;
 }

 mg = kzalloc(sizeof(*mg), GFP_KERNEL);
 if (!mg)
  return -ENOMEM;

 dev_set_drvdata(dev, mg);

 mg->pdev = pdev;
 mg->irq = irq;
 mg->irq_base = pdata->gpio_base + MSIC_GPIO_IRQ_OFFSET;
 mg->chip.label = "msic_gpio";
 mg->chip.direction_input = msic_gpio_direction_input;
 mg->chip.direction_output = msic_gpio_direction_output;
 mg->chip.get = msic_gpio_get;
 mg->chip.set = msic_gpio_set;
 mg->chip.to_irq = msic_gpio_to_irq;
 mg->chip.base = pdata->gpio_base;
 mg->chip.ngpio = MSIC_NUM_GPIO;
 mg->chip.can_sleep = 1;
 mg->chip.parent = dev;

 mutex_init(&mg->buslock);

 retval = gpiochip_add_data(&mg->chip, mg);
 if (retval) {
  dev_err(dev, "Adding MSIC gpio chip failed\n");
  goto err;
 }

 for (i = 0; i < mg->chip.ngpio; i++) {
  irq_set_chip_data(i + mg->irq_base, mg);
  irq_set_chip_and_handler(i + mg->irq_base,
      &msic_irqchip,
      handle_simple_irq);
 }
 irq_set_chained_handler_and_data(mg->irq, msic_gpio_irq_handler, mg);

 return 0;
err:
 kfree(mg);
 return retval;
}
