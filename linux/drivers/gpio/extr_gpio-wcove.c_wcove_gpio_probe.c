
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; int can_sleep; int dbg_show; int parent; int ngpio; int set_config; int set; int get; int get_direction; int direction_output; int direction_input; int label; } ;
struct wcove_gpio {int regmap; TYPE_1__ chip; int regmap_irq_chip; struct device* dev; int buslock; } ;
struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct intel_soc_pmic {int regmap; int irq_chip_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_IRQ0_MASK ;
 int GPIO_IRQ1_MASK ;
 int IRQF_ONESHOT ;
 scalar_t__ IRQ_MASK_BASE ;
 int IRQ_TYPE_NONE ;
 int KBUILD_MODNAME ;
 int WCOVE_VGPIO_NUM ;
 int dev_err (struct device*,char*,int) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct wcove_gpio*) ;
 struct wcove_gpio* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct wcove_gpio*) ;
 int gpiochip_irqchip_add_nested (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_set_nested_irqchip (TYPE_1__*,int *,int) ;
 int handle_simple_irq ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wcove_gpio*) ;
 int regmap_irq_get_virq (int ,int) ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;
 int wcove_gpio_dbg_show ;
 int wcove_gpio_dir_in ;
 int wcove_gpio_dir_out ;
 int wcove_gpio_get ;
 int wcove_gpio_get_direction ;
 int wcove_gpio_irq_handler ;
 int wcove_gpio_set ;
 int wcove_gpio_set_config ;
 int wcove_irqchip ;

__attribute__((used)) static int wcove_gpio_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic;
 struct wcove_gpio *wg;
 int virq, ret, irq;
 struct device *dev;
 pmic = dev_get_drvdata(pdev->dev.parent);
 if (!pmic)
  return -ENODEV;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 dev = &pdev->dev;

 wg = devm_kzalloc(dev, sizeof(*wg), GFP_KERNEL);
 if (!wg)
  return -ENOMEM;

 wg->regmap_irq_chip = pmic->irq_chip_data;

 platform_set_drvdata(pdev, wg);

 mutex_init(&wg->buslock);
 wg->chip.label = KBUILD_MODNAME;
 wg->chip.direction_input = wcove_gpio_dir_in;
 wg->chip.direction_output = wcove_gpio_dir_out;
 wg->chip.get_direction = wcove_gpio_get_direction;
 wg->chip.get = wcove_gpio_get;
 wg->chip.set = wcove_gpio_set;
 wg->chip.set_config = wcove_gpio_set_config,
 wg->chip.base = -1;
 wg->chip.ngpio = WCOVE_VGPIO_NUM;
 wg->chip.can_sleep = 1;
 wg->chip.parent = pdev->dev.parent;
 wg->chip.dbg_show = wcove_gpio_dbg_show;
 wg->dev = dev;
 wg->regmap = pmic->regmap;

 ret = devm_gpiochip_add_data(dev, &wg->chip, wg);
 if (ret) {
  dev_err(dev, "Failed to add gpiochip: %d\n", ret);
  return ret;
 }

 ret = gpiochip_irqchip_add_nested(&wg->chip, &wcove_irqchip, 0,
       handle_simple_irq, IRQ_TYPE_NONE);
 if (ret) {
  dev_err(dev, "Failed to add irqchip: %d\n", ret);
  return ret;
 }

 virq = regmap_irq_get_virq(wg->regmap_irq_chip, irq);
 if (virq < 0) {
  dev_err(dev, "Failed to get virq by irq %d\n", irq);
  return virq;
 }

 ret = devm_request_threaded_irq(dev, virq, ((void*)0),
  wcove_gpio_irq_handler, IRQF_ONESHOT, pdev->name, wg);
 if (ret) {
  dev_err(dev, "Failed to request irq %d\n", virq);
  return ret;
 }

 gpiochip_set_nested_irqchip(&wg->chip, &wcove_irqchip, virq);


 ret = regmap_update_bits(wg->regmap, IRQ_MASK_BASE, GPIO_IRQ0_MASK,
     0x00);
 if (ret)
  return ret;


 ret = regmap_update_bits(wg->regmap, IRQ_MASK_BASE + 1, GPIO_IRQ1_MASK,
     0x00);
 if (ret)
  return ret;

 return 0;
}
