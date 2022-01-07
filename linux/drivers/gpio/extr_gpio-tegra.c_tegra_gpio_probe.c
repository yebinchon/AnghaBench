
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* name; int irq_set_wake; int irq_shutdown; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct TYPE_12__ {char* label; int ngpio; int set_config; int of_node; TYPE_2__* parent; scalar_t__ base; int to_irq; int get_direction; int set; int direction_output; int get; int direction_input; int free; int request; } ;
struct tegra_gpio_info {int bank_count; struct tegra_gpio_bank* bank_info; TYPE_3__ ic; int irq_domain; TYPE_7__ gc; int regs; TYPE_1__* soc; TYPE_2__* dev; } ;
struct tegra_gpio_bank {unsigned int bank; int irq; int * dbc_lock; int * lvl_lock; struct tegra_gpio_info* tgi; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {scalar_t__ debounce_supported; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t GPIO_BANK (unsigned int) ;
 int GPIO_INT_ENB (struct tegra_gpio_info*,int) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_7__*,struct tegra_gpio_info*) ;
 struct tegra_gpio_bank* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct tegra_gpio_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int handle_simple_irq ;
 int irq_create_mapping (int ,unsigned int) ;
 int irq_domain_add_linear (int ,int,int *,int *) ;
 int irq_domain_remove (int ) ;
 int irq_domain_simple_ops ;
 int irq_set_chained_handler_and_data (int,int ,struct tegra_gpio_bank*) ;
 int irq_set_chip_and_handler (int,TYPE_3__*,int ) ;
 int irq_set_chip_data (int,struct tegra_gpio_bank*) ;
 TYPE_1__* of_device_get_match_data (TYPE_2__*) ;
 int platform_get_irq (struct platform_device*,unsigned int) ;
 int platform_irq_count (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_gpio_info*) ;
 int spin_lock_init (int *) ;
 int tegra_gpio_compose (unsigned int,unsigned int,int ) ;
 int tegra_gpio_debuginit (struct tegra_gpio_info*) ;
 int tegra_gpio_direction_input ;
 int tegra_gpio_direction_output ;
 int tegra_gpio_free ;
 int tegra_gpio_get ;
 int tegra_gpio_get_direction ;
 int tegra_gpio_irq_ack ;
 int tegra_gpio_irq_handler ;
 int tegra_gpio_irq_mask ;
 int tegra_gpio_irq_set_type ;
 int tegra_gpio_irq_set_wake ;
 int tegra_gpio_irq_shutdown ;
 int tegra_gpio_irq_unmask ;
 int tegra_gpio_request ;
 int tegra_gpio_set ;
 int tegra_gpio_set_config ;
 int tegra_gpio_to_irq ;
 int tegra_gpio_writel (struct tegra_gpio_info*,int,int ) ;

__attribute__((used)) static int tegra_gpio_probe(struct platform_device *pdev)
{
 struct tegra_gpio_info *tgi;
 struct tegra_gpio_bank *bank;
 unsigned int gpio, i, j;
 int ret;

 tgi = devm_kzalloc(&pdev->dev, sizeof(*tgi), GFP_KERNEL);
 if (!tgi)
  return -ENODEV;

 tgi->soc = of_device_get_match_data(&pdev->dev);
 tgi->dev = &pdev->dev;

 ret = platform_irq_count(pdev);
 if (ret < 0)
  return ret;

 tgi->bank_count = ret;

 if (!tgi->bank_count) {
  dev_err(&pdev->dev, "Missing IRQ resource\n");
  return -ENODEV;
 }

 tgi->gc.label = "tegra-gpio";
 tgi->gc.request = tegra_gpio_request;
 tgi->gc.free = tegra_gpio_free;
 tgi->gc.direction_input = tegra_gpio_direction_input;
 tgi->gc.get = tegra_gpio_get;
 tgi->gc.direction_output = tegra_gpio_direction_output;
 tgi->gc.set = tegra_gpio_set;
 tgi->gc.get_direction = tegra_gpio_get_direction;
 tgi->gc.to_irq = tegra_gpio_to_irq;
 tgi->gc.base = 0;
 tgi->gc.ngpio = tgi->bank_count * 32;
 tgi->gc.parent = &pdev->dev;
 tgi->gc.of_node = pdev->dev.of_node;

 tgi->ic.name = "GPIO";
 tgi->ic.irq_ack = tegra_gpio_irq_ack;
 tgi->ic.irq_mask = tegra_gpio_irq_mask;
 tgi->ic.irq_unmask = tegra_gpio_irq_unmask;
 tgi->ic.irq_set_type = tegra_gpio_irq_set_type;
 tgi->ic.irq_shutdown = tegra_gpio_irq_shutdown;




 platform_set_drvdata(pdev, tgi);

 if (tgi->soc->debounce_supported)
  tgi->gc.set_config = tegra_gpio_set_config;

 tgi->bank_info = devm_kcalloc(&pdev->dev, tgi->bank_count,
          sizeof(*tgi->bank_info), GFP_KERNEL);
 if (!tgi->bank_info)
  return -ENOMEM;

 tgi->irq_domain = irq_domain_add_linear(pdev->dev.of_node,
      tgi->gc.ngpio,
      &irq_domain_simple_ops, ((void*)0));
 if (!tgi->irq_domain)
  return -ENODEV;

 for (i = 0; i < tgi->bank_count; i++) {
  ret = platform_get_irq(pdev, i);
  if (ret < 0)
   return ret;

  bank = &tgi->bank_info[i];
  bank->bank = i;
  bank->irq = ret;
  bank->tgi = tgi;
 }

 tgi->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(tgi->regs))
  return PTR_ERR(tgi->regs);

 for (i = 0; i < tgi->bank_count; i++) {
  for (j = 0; j < 4; j++) {
   int gpio = tegra_gpio_compose(i, j, 0);

   tegra_gpio_writel(tgi, 0x00, GPIO_INT_ENB(tgi, gpio));
  }
 }

 ret = devm_gpiochip_add_data(&pdev->dev, &tgi->gc, tgi);
 if (ret < 0) {
  irq_domain_remove(tgi->irq_domain);
  return ret;
 }

 for (gpio = 0; gpio < tgi->gc.ngpio; gpio++) {
  int irq = irq_create_mapping(tgi->irq_domain, gpio);


  bank = &tgi->bank_info[GPIO_BANK(gpio)];

  irq_set_chip_data(irq, bank);
  irq_set_chip_and_handler(irq, &tgi->ic, handle_simple_irq);
 }

 for (i = 0; i < tgi->bank_count; i++) {
  bank = &tgi->bank_info[i];

  irq_set_chained_handler_and_data(bank->irq,
       tegra_gpio_irq_handler, bank);

  for (j = 0; j < 4; j++) {
   spin_lock_init(&bank->lvl_lock[j]);
   spin_lock_init(&bank->dbc_lock[j]);
  }
 }

 tegra_gpio_debuginit(tgi);

 return 0;
}
