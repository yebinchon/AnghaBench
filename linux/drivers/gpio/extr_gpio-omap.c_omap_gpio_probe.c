
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct omap_gpio_platform_data {int dbck_flag; int loses_context; int get_context_loss_count; TYPE_2__* regs; int non_wakeup_gpios; scalar_t__ is_mpuio; int bank_width; int bank_stride; } ;
struct of_device_id {struct omap_gpio_platform_data* data; } ;
struct irq_chip {struct device* parent_device; int flags; int name; int irq_bus_sync_unlock; int irq_bus_lock; int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; int irq_shutdown; int irq_startup; } ;
struct TYPE_8__ {int notifier_call; } ;
struct TYPE_5__ {int of_node; int owner; struct device* parent; } ;
struct gpio_bank {int irq; int dbck_flag; int loses_context; TYPE_4__ nb; int dbck; scalar_t__ is_mpuio; int base; int wa_lock; int lock; int set_dataout; TYPE_2__* regs; int get_context_loss_count; TYPE_1__ chip; int non_wakeup_gpios; int width; int stride; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int irq_ack; } ;
struct TYPE_6__ {scalar_t__ clr_dataout; scalar_t__ set_dataout; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IRQCHIP_MASK_ON_SUSPEND ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int cpu_pm_register_notifier (TYPE_4__*) ;
 int dev_err (struct device*,char*,...) ;
 struct omap_gpio_platform_data* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 TYPE_3__ dummy_irq_chip ;
 int gpio_irq_bus_sync_unlock ;
 int gpio_omap_cpu_notifier ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;
 int of_node_get (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int omap_gpio_chip_init (struct gpio_bank*,struct irq_chip*) ;
 int omap_gpio_irq_bus_lock ;
 int omap_gpio_irq_shutdown ;
 int omap_gpio_irq_startup ;
 int omap_gpio_irq_type ;
 int omap_gpio_mask_irq ;
 int omap_gpio_match ;
 int omap_gpio_mod_init (struct gpio_bank*) ;
 int omap_gpio_show_rev (struct gpio_bank*) ;
 int omap_gpio_unmask_irq ;
 int omap_gpio_wake_enable ;
 int omap_mpuio_init (struct gpio_bank*) ;
 int omap_set_gpio_dataout_mask ;
 int omap_set_gpio_dataout_reg ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_bank*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int omap_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 const struct of_device_id *match;
 const struct omap_gpio_platform_data *pdata;
 struct gpio_bank *bank;
 struct irq_chip *irqc;
 int ret;

 match = of_match_device(of_match_ptr(omap_gpio_match), dev);

 pdata = match ? match->data : dev_get_platdata(dev);
 if (!pdata)
  return -EINVAL;

 bank = devm_kzalloc(dev, sizeof(*bank), GFP_KERNEL);
 if (!bank)
  return -ENOMEM;

 irqc = devm_kzalloc(dev, sizeof(*irqc), GFP_KERNEL);
 if (!irqc)
  return -ENOMEM;

 irqc->irq_startup = omap_gpio_irq_startup,
 irqc->irq_shutdown = omap_gpio_irq_shutdown,
 irqc->irq_ack = dummy_irq_chip.irq_ack,
 irqc->irq_mask = omap_gpio_mask_irq,
 irqc->irq_unmask = omap_gpio_unmask_irq,
 irqc->irq_set_type = omap_gpio_irq_type,
 irqc->irq_set_wake = omap_gpio_wake_enable,
 irqc->irq_bus_lock = omap_gpio_irq_bus_lock,
 irqc->irq_bus_sync_unlock = gpio_irq_bus_sync_unlock,
 irqc->name = dev_name(&pdev->dev);
 irqc->flags = IRQCHIP_MASK_ON_SUSPEND;
 irqc->parent_device = dev;

 bank->irq = platform_get_irq(pdev, 0);
 if (bank->irq <= 0) {
  if (!bank->irq)
   bank->irq = -ENXIO;
  if (bank->irq != -EPROBE_DEFER)
   dev_err(dev,
    "can't get irq resource ret=%d\n", bank->irq);
  return bank->irq;
 }

 bank->chip.parent = dev;
 bank->chip.owner = THIS_MODULE;
 bank->dbck_flag = pdata->dbck_flag;
 bank->stride = pdata->bank_stride;
 bank->width = pdata->bank_width;
 bank->is_mpuio = pdata->is_mpuio;
 bank->non_wakeup_gpios = pdata->non_wakeup_gpios;
 bank->regs = pdata->regs;




 if (node) {
  if (!of_property_read_bool(node, "ti,gpio-always-on"))
   bank->loses_context = 1;
 } else {
  bank->loses_context = pdata->loses_context;

  if (bank->loses_context)
   bank->get_context_loss_count =
    pdata->get_context_loss_count;
 }

 if (bank->regs->set_dataout && bank->regs->clr_dataout)
  bank->set_dataout = omap_set_gpio_dataout_reg;
 else
  bank->set_dataout = omap_set_gpio_dataout_mask;

 raw_spin_lock_init(&bank->lock);
 raw_spin_lock_init(&bank->wa_lock);


 bank->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(bank->base)) {
  return PTR_ERR(bank->base);
 }

 if (bank->dbck_flag) {
  bank->dbck = devm_clk_get(dev, "dbclk");
  if (IS_ERR(bank->dbck)) {
   dev_err(dev,
    "Could not get gpio dbck. Disable debounce\n");
   bank->dbck_flag = 0;
  } else {
   clk_prepare(bank->dbck);
  }
 }

 platform_set_drvdata(pdev, bank);

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);

 if (bank->is_mpuio)
  omap_mpuio_init(bank);

 omap_gpio_mod_init(bank);

 ret = omap_gpio_chip_init(bank, irqc);
 if (ret) {
  pm_runtime_put_sync(dev);
  pm_runtime_disable(dev);
  if (bank->dbck_flag)
   clk_unprepare(bank->dbck);
  return ret;
 }

 omap_gpio_show_rev(bank);

 bank->nb.notifier_call = gpio_omap_cpu_notifier;
 cpu_pm_register_notifier(&bank->nb);

 pm_runtime_put(dev);

 return 0;
}
