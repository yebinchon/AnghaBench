
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_11__ {int base; unsigned int ngpio; int can_sleep; int label; int dbg_show; struct device_node* of_node; int to_irq; int set; int direction_output; int get; int direction_input; int get_direction; int free; int request; TYPE_2__* parent; } ;
struct mvebu_gpio_chip {int soc_variant; int domain; TYPE_5__ chip; int percpu_regs; int regs; scalar_t__ offset; int clk; } ;
struct TYPE_9__ {int name; void* irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct irq_chip_type {int type; TYPE_1__ chip; int handler; } ;
struct irq_chip_generic {struct irq_chip_type* chip_types; struct mvebu_gpio_chip* private; } ;
struct device_node {int name; } ;


 int BUG () ;
 int CONFIG_PWM ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_EDGE_CAUSE_ARMADAXP_OFF (int) ;
 scalar_t__ GPIO_EDGE_CAUSE_OFF ;
 scalar_t__ GPIO_EDGE_MASK_ARMADAXP_OFF (int) ;
 scalar_t__ GPIO_EDGE_MASK_MV78200_OFF (int) ;
 scalar_t__ GPIO_EDGE_MASK_OFF ;
 scalar_t__ GPIO_LEVEL_MASK_ARMADAXP_OFF (int) ;
 scalar_t__ GPIO_LEVEL_MASK_MV78200_OFF (int) ;
 scalar_t__ GPIO_LEVEL_MASK_OFF ;
 int IRQ_LEVEL ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 scalar_t__ IS_ENABLED (int ) ;
 int IS_ERR (int ) ;




 int MVEBU_MAX_GPIO_PER_BANK ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_5__*,struct mvebu_gpio_chip*) ;
 struct mvebu_gpio_chip* devm_kzalloc (TYPE_2__*,int,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_alloc_domain_generic_chips (int ,unsigned int,int,int ,int ,int,int ,int ) ;
 int irq_domain_add_linear (struct device_node*,unsigned int,int *,int *) ;
 int irq_domain_remove (int ) ;
 int irq_generic_chip_ops ;
 struct irq_chip_generic* irq_get_domain_generic_chip (int ,int ) ;
 int irq_set_chained_handler_and_data (int,int ,struct mvebu_gpio_chip*) ;
 int mvebu_gpio_dbg_show ;
 int mvebu_gpio_direction_input ;
 int mvebu_gpio_direction_output ;
 int mvebu_gpio_edge_irq_mask ;
 int mvebu_gpio_edge_irq_unmask ;
 int mvebu_gpio_get ;
 int mvebu_gpio_get_direction ;
 int mvebu_gpio_irq_ack ;
 int mvebu_gpio_irq_handler ;
 void* mvebu_gpio_irq_set_type ;
 int mvebu_gpio_level_irq_mask ;
 int mvebu_gpio_level_irq_unmask ;
 int mvebu_gpio_of_match ;
 int mvebu_gpio_probe_raw (struct platform_device*,struct mvebu_gpio_chip*) ;
 int mvebu_gpio_probe_syscon (struct platform_device*,struct mvebu_gpio_chip*) ;
 int mvebu_gpio_set ;
 int mvebu_gpio_to_irq ;
 int mvebu_pwm_probe (struct platform_device*,struct mvebu_gpio_chip*,int) ;
 int of_alias_get_id (struct device_node*,char*) ;
 scalar_t__ of_irq_count (struct device_node*) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct mvebu_gpio_chip*) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int mvebu_gpio_probe(struct platform_device *pdev)
{
 struct mvebu_gpio_chip *mvchip;
 const struct of_device_id *match;
 struct device_node *np = pdev->dev.of_node;
 struct irq_chip_generic *gc;
 struct irq_chip_type *ct;
 unsigned int ngpios;
 bool have_irqs;
 int soc_variant;
 int i, cpu, id;
 int err;

 match = of_match_device(mvebu_gpio_of_match, &pdev->dev);
 if (match)
  soc_variant = (unsigned long) match->data;
 else
  soc_variant = 128;


 have_irqs = of_irq_count(np) != 0;

 mvchip = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_gpio_chip),
         GFP_KERNEL);
 if (!mvchip)
  return -ENOMEM;

 platform_set_drvdata(pdev, mvchip);

 if (of_property_read_u32(pdev->dev.of_node, "ngpios", &ngpios)) {
  dev_err(&pdev->dev, "Missing ngpios OF property\n");
  return -ENODEV;
 }

 id = of_alias_get_id(pdev->dev.of_node, "gpio");
 if (id < 0) {
  dev_err(&pdev->dev, "Couldn't get OF id\n");
  return id;
 }

 mvchip->clk = devm_clk_get(&pdev->dev, ((void*)0));

 if (!IS_ERR(mvchip->clk))
  clk_prepare_enable(mvchip->clk);

 mvchip->soc_variant = soc_variant;
 mvchip->chip.label = dev_name(&pdev->dev);
 mvchip->chip.parent = &pdev->dev;
 mvchip->chip.request = gpiochip_generic_request;
 mvchip->chip.free = gpiochip_generic_free;
 mvchip->chip.get_direction = mvebu_gpio_get_direction;
 mvchip->chip.direction_input = mvebu_gpio_direction_input;
 mvchip->chip.get = mvebu_gpio_get;
 mvchip->chip.direction_output = mvebu_gpio_direction_output;
 mvchip->chip.set = mvebu_gpio_set;
 if (have_irqs)
  mvchip->chip.to_irq = mvebu_gpio_to_irq;
 mvchip->chip.base = id * MVEBU_MAX_GPIO_PER_BANK;
 mvchip->chip.ngpio = ngpios;
 mvchip->chip.can_sleep = 0;
 mvchip->chip.of_node = np;
 mvchip->chip.dbg_show = mvebu_gpio_dbg_show;

 if (soc_variant == 131)
  err = mvebu_gpio_probe_syscon(pdev, mvchip);
 else
  err = mvebu_gpio_probe_raw(pdev, mvchip);

 if (err)
  return err;




 switch (soc_variant) {
 case 128:
 case 131:
  regmap_write(mvchip->regs,
        GPIO_EDGE_CAUSE_OFF + mvchip->offset, 0);
  regmap_write(mvchip->regs,
        GPIO_EDGE_MASK_OFF + mvchip->offset, 0);
  regmap_write(mvchip->regs,
        GPIO_LEVEL_MASK_OFF + mvchip->offset, 0);
  break;
 case 129:
  regmap_write(mvchip->regs, GPIO_EDGE_CAUSE_OFF, 0);
  for (cpu = 0; cpu < 2; cpu++) {
   regmap_write(mvchip->regs,
         GPIO_EDGE_MASK_MV78200_OFF(cpu), 0);
   regmap_write(mvchip->regs,
         GPIO_LEVEL_MASK_MV78200_OFF(cpu), 0);
  }
  break;
 case 130:
  regmap_write(mvchip->regs, GPIO_EDGE_CAUSE_OFF, 0);
  regmap_write(mvchip->regs, GPIO_EDGE_MASK_OFF, 0);
  regmap_write(mvchip->regs, GPIO_LEVEL_MASK_OFF, 0);
  for (cpu = 0; cpu < 4; cpu++) {
   regmap_write(mvchip->percpu_regs,
         GPIO_EDGE_CAUSE_ARMADAXP_OFF(cpu), 0);
   regmap_write(mvchip->percpu_regs,
         GPIO_EDGE_MASK_ARMADAXP_OFF(cpu), 0);
   regmap_write(mvchip->percpu_regs,
         GPIO_LEVEL_MASK_ARMADAXP_OFF(cpu), 0);
  }
  break;
 default:
  BUG();
 }

 devm_gpiochip_add_data(&pdev->dev, &mvchip->chip, mvchip);


 if (!have_irqs)
  return 0;

 mvchip->domain =
     irq_domain_add_linear(np, ngpios, &irq_generic_chip_ops, ((void*)0));
 if (!mvchip->domain) {
  dev_err(&pdev->dev, "couldn't allocate irq domain %s (DT).\n",
   mvchip->chip.label);
  return -ENODEV;
 }

 err = irq_alloc_domain_generic_chips(
     mvchip->domain, ngpios, 2, np->name, handle_level_irq,
     IRQ_NOREQUEST | IRQ_NOPROBE | IRQ_LEVEL, 0, 0);
 if (err) {
  dev_err(&pdev->dev, "couldn't allocate irq chips %s (DT).\n",
   mvchip->chip.label);
  goto err_domain;
 }





 gc = irq_get_domain_generic_chip(mvchip->domain, 0);
 gc->private = mvchip;
 ct = &gc->chip_types[0];
 ct->type = IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW;
 ct->chip.irq_mask = mvebu_gpio_level_irq_mask;
 ct->chip.irq_unmask = mvebu_gpio_level_irq_unmask;
 ct->chip.irq_set_type = mvebu_gpio_irq_set_type;
 ct->chip.name = mvchip->chip.label;

 ct = &gc->chip_types[1];
 ct->type = IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING;
 ct->chip.irq_ack = mvebu_gpio_irq_ack;
 ct->chip.irq_mask = mvebu_gpio_edge_irq_mask;
 ct->chip.irq_unmask = mvebu_gpio_edge_irq_unmask;
 ct->chip.irq_set_type = mvebu_gpio_irq_set_type;
 ct->handler = handle_edge_irq;
 ct->chip.name = mvchip->chip.label;






 for (i = 0; i < 4; i++) {
  int irq = platform_get_irq(pdev, i);

  if (irq < 0)
   continue;
  irq_set_chained_handler_and_data(irq, mvebu_gpio_irq_handler,
       mvchip);
 }


 if (IS_ENABLED(CONFIG_PWM))
  return mvebu_pwm_probe(pdev, mvchip, id);

 return 0;

err_domain:
 irq_domain_remove(mvchip->domain);

 return err;
}
