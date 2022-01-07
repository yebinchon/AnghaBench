
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int init_valid_mask; } ;
struct TYPE_11__ {scalar_t__ ngpio; int base; int dbg_show; TYPE_1__ irq; struct device_node* of_node; TYPE_7__* parent; } ;
struct stmpe_gpio {TYPE_2__ chip; int norequest_mask; struct stmpe* stmpe; TYPE_7__* dev; int irq_lock; } ;
struct stmpe {scalar_t__ num_gpios; } ;
struct TYPE_12__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_DEBUG_FS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ MAX_GPIOS ;
 int STMPE_BLOCK_GPIO ;
 int dev_err (TYPE_7__*,char*,...) ;
 struct stmpe* dev_get_drvdata (int ) ;
 int dev_info (TYPE_7__*,char*) ;
 int devm_request_threaded_irq (TYPE_7__*,int,int *,int ,int ,char*,struct stmpe_gpio*) ;
 int gpiochip_add_data (TYPE_2__*,struct stmpe_gpio*) ;
 int gpiochip_irqchip_add_nested (TYPE_2__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_2__*) ;
 int gpiochip_set_nested_irqchip (TYPE_2__*,int *,int) ;
 int handle_simple_irq ;
 int kfree (struct stmpe_gpio*) ;
 struct stmpe_gpio* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stmpe_gpio*) ;
 int stmpe_dbg_show ;
 int stmpe_disable (struct stmpe*,int ) ;
 int stmpe_enable (struct stmpe*,int ) ;
 int stmpe_gpio_irq ;
 int stmpe_gpio_irq_chip ;
 int stmpe_init_irq_valid_mask ;
 TYPE_2__ template_chip ;

__attribute__((used)) static int stmpe_gpio_probe(struct platform_device *pdev)
{
 struct stmpe *stmpe = dev_get_drvdata(pdev->dev.parent);
 struct device_node *np = pdev->dev.of_node;
 struct stmpe_gpio *stmpe_gpio;
 int ret, irq;

 if (stmpe->num_gpios > MAX_GPIOS) {
  dev_err(&pdev->dev, "Need to increase maximum GPIO number\n");
  return -EINVAL;
 }

 stmpe_gpio = kzalloc(sizeof(*stmpe_gpio), GFP_KERNEL);
 if (!stmpe_gpio)
  return -ENOMEM;

 mutex_init(&stmpe_gpio->irq_lock);

 stmpe_gpio->dev = &pdev->dev;
 stmpe_gpio->stmpe = stmpe;
 stmpe_gpio->chip = template_chip;
 stmpe_gpio->chip.ngpio = stmpe->num_gpios;
 stmpe_gpio->chip.parent = &pdev->dev;
 stmpe_gpio->chip.of_node = np;
 stmpe_gpio->chip.base = -1;
 stmpe_gpio->chip.irq.init_valid_mask = stmpe_init_irq_valid_mask;

 if (IS_ENABLED(CONFIG_DEBUG_FS))
                stmpe_gpio->chip.dbg_show = stmpe_dbg_show;

 of_property_read_u32(np, "st,norequest-mask",
   &stmpe_gpio->norequest_mask);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  dev_info(&pdev->dev,
   "device configured in no-irq mode: "
   "irqs are not available\n");

 ret = stmpe_enable(stmpe, STMPE_BLOCK_GPIO);
 if (ret)
  goto out_free;

 ret = gpiochip_add_data(&stmpe_gpio->chip, stmpe_gpio);
 if (ret) {
  dev_err(&pdev->dev, "unable to add gpiochip: %d\n", ret);
  goto out_disable;
 }

 if (irq > 0) {
  ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
    stmpe_gpio_irq, IRQF_ONESHOT,
    "stmpe-gpio", stmpe_gpio);
  if (ret) {
   dev_err(&pdev->dev, "unable to get irq: %d\n", ret);
   goto out_disable;
  }
  ret = gpiochip_irqchip_add_nested(&stmpe_gpio->chip,
         &stmpe_gpio_irq_chip,
         0,
         handle_simple_irq,
         IRQ_TYPE_NONE);
  if (ret) {
   dev_err(&pdev->dev,
    "could not connect irqchip to gpiochip\n");
   goto out_disable;
  }

  gpiochip_set_nested_irqchip(&stmpe_gpio->chip,
         &stmpe_gpio_irq_chip,
         irq);
 }

 platform_set_drvdata(pdev, stmpe_gpio);

 return 0;

out_disable:
 stmpe_disable(stmpe, STMPE_BLOCK_GPIO);
 gpiochip_remove(&stmpe_gpio->chip);
out_free:
 kfree(stmpe_gpio);
 return ret;
}
