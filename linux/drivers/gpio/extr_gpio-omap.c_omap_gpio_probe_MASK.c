#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct omap_gpio_platform_data {int dbck_flag; int loses_context; int /*<<< orphan*/  get_context_loss_count; TYPE_2__* regs; int /*<<< orphan*/  non_wakeup_gpios; scalar_t__ is_mpuio; int /*<<< orphan*/  bank_width; int /*<<< orphan*/  bank_stride; } ;
struct of_device_id {struct omap_gpio_platform_data* data; } ;
struct irq_chip {struct device* parent_device; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  irq_bus_sync_unlock; int /*<<< orphan*/  irq_bus_lock; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; int /*<<< orphan*/  irq_shutdown; int /*<<< orphan*/  irq_startup; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  owner; struct device* parent; } ;
struct gpio_bank {int irq; int dbck_flag; int loses_context; TYPE_4__ nb; int /*<<< orphan*/  dbck; scalar_t__ is_mpuio; int /*<<< orphan*/  base; int /*<<< orphan*/  wa_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  set_dataout; TYPE_2__* regs; int /*<<< orphan*/  get_context_loss_count; TYPE_1__ chip; int /*<<< orphan*/  non_wakeup_gpios; int /*<<< orphan*/  width; int /*<<< orphan*/  stride; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_ack; } ;
struct TYPE_6__ {scalar_t__ clr_dataout; scalar_t__ set_dataout; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQCHIP_MASK_ON_SUSPEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct omap_gpio_platform_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__ dummy_irq_chip ; 
 int /*<<< orphan*/  gpio_irq_bus_sync_unlock ; 
 int /*<<< orphan*/  gpio_omap_cpu_notifier ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*) ; 
 int FUNC15 (struct gpio_bank*,struct irq_chip*) ; 
 int /*<<< orphan*/  omap_gpio_irq_bus_lock ; 
 int /*<<< orphan*/  omap_gpio_irq_shutdown ; 
 int /*<<< orphan*/  omap_gpio_irq_startup ; 
 int /*<<< orphan*/  omap_gpio_irq_type ; 
 int /*<<< orphan*/  omap_gpio_mask_irq ; 
 int /*<<< orphan*/  omap_gpio_match ; 
 int /*<<< orphan*/  FUNC16 (struct gpio_bank*) ; 
 int /*<<< orphan*/  FUNC17 (struct gpio_bank*) ; 
 int /*<<< orphan*/  omap_gpio_unmask_irq ; 
 int /*<<< orphan*/  omap_gpio_wake_enable ; 
 int /*<<< orphan*/  FUNC18 (struct gpio_bank*) ; 
 int /*<<< orphan*/  omap_set_gpio_dataout_mask ; 
 int /*<<< orphan*/  omap_set_gpio_dataout_reg ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct gpio_bank*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	const struct of_device_id *match;
	const struct omap_gpio_platform_data *pdata;
	struct gpio_bank *bank;
	struct irq_chip *irqc;
	int ret;

	match = FUNC11(FUNC12(omap_gpio_match), dev);

	pdata = match ? match->data : FUNC6(dev);
	if (!pdata)
		return -EINVAL;

	bank = FUNC9(dev, sizeof(*bank), GFP_KERNEL);
	if (!bank)
		return -ENOMEM;

	irqc = FUNC9(dev, sizeof(*irqc), GFP_KERNEL);
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
	irqc->name = FUNC7(&pdev->dev);
	irqc->flags = IRQCHIP_MASK_ON_SUSPEND;
	irqc->parent_device = dev;

	bank->irq = FUNC19(pdev, 0);
	if (bank->irq <= 0) {
		if (!bank->irq)
			bank->irq = -ENXIO;
		if (bank->irq != -EPROBE_DEFER)
			FUNC5(dev,
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
#ifdef CONFIG_OF_GPIO
	bank->chip.of_node = of_node_get(node);
#endif

	if (node) {
		if (!FUNC14(node, "ti,gpio-always-on"))
			bank->loses_context = true;
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

	FUNC26(&bank->lock);
	FUNC26(&bank->wa_lock);

	/* Static mapping, never released */
	bank->base = FUNC10(pdev, 0);
	if (FUNC0(bank->base)) {
		return FUNC1(bank->base);
	}

	if (bank->dbck_flag) {
		bank->dbck = FUNC8(dev, "dbclk");
		if (FUNC0(bank->dbck)) {
			FUNC5(dev,
				"Could not get gpio dbck. Disable debounce\n");
			bank->dbck_flag = false;
		} else {
			FUNC2(bank->dbck);
		}
	}

	FUNC20(pdev, bank);

	FUNC22(dev);
	FUNC23(dev);

	if (bank->is_mpuio)
		FUNC18(bank);

	FUNC16(bank);

	ret = FUNC15(bank, irqc);
	if (ret) {
		FUNC25(dev);
		FUNC21(dev);
		if (bank->dbck_flag)
			FUNC3(bank->dbck);
		return ret;
	}

	FUNC17(bank);

	bank->nb.notifier_call = gpio_omap_cpu_notifier;
	FUNC4(&bank->nb);

	FUNC24(dev);

	return 0;
}