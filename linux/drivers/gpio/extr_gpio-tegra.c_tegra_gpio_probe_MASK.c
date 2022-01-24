#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* name; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_shutdown; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; } ;
struct TYPE_12__ {char* label; int ngpio; int /*<<< orphan*/  set_config; int /*<<< orphan*/  of_node; TYPE_2__* parent; scalar_t__ base; int /*<<< orphan*/  to_irq; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct tegra_gpio_info {int bank_count; struct tegra_gpio_bank* bank_info; TYPE_3__ ic; int /*<<< orphan*/  irq_domain; TYPE_7__ gc; int /*<<< orphan*/  regs; TYPE_1__* soc; TYPE_2__* dev; } ;
struct tegra_gpio_bank {unsigned int bank; int irq; int /*<<< orphan*/ * dbc_lock; int /*<<< orphan*/ * lvl_lock; struct tegra_gpio_info* tgi; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {scalar_t__ debounce_supported; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (TYPE_2__*,TYPE_7__*,struct tegra_gpio_info*) ; 
 struct tegra_gpio_bank* FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct tegra_gpio_info* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,struct tegra_gpio_bank*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct tegra_gpio_bank*) ; 
 TYPE_1__* FUNC15 (TYPE_2__*) ; 
 int FUNC16 (struct platform_device*,unsigned int) ; 
 int FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct tegra_gpio_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct tegra_gpio_info*) ; 
 int /*<<< orphan*/  tegra_gpio_direction_input ; 
 int /*<<< orphan*/  tegra_gpio_direction_output ; 
 int /*<<< orphan*/  tegra_gpio_free ; 
 int /*<<< orphan*/  tegra_gpio_get ; 
 int /*<<< orphan*/  tegra_gpio_get_direction ; 
 int /*<<< orphan*/  tegra_gpio_irq_ack ; 
 int /*<<< orphan*/  tegra_gpio_irq_handler ; 
 int /*<<< orphan*/  tegra_gpio_irq_mask ; 
 int /*<<< orphan*/  tegra_gpio_irq_set_type ; 
 int /*<<< orphan*/  tegra_gpio_irq_set_wake ; 
 int /*<<< orphan*/  tegra_gpio_irq_shutdown ; 
 int /*<<< orphan*/  tegra_gpio_irq_unmask ; 
 int /*<<< orphan*/  tegra_gpio_request ; 
 int /*<<< orphan*/  tegra_gpio_set ; 
 int /*<<< orphan*/  tegra_gpio_set_config ; 
 int /*<<< orphan*/  tegra_gpio_to_irq ; 
 int /*<<< orphan*/  FUNC22 (struct tegra_gpio_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct tegra_gpio_info *tgi;
	struct tegra_gpio_bank *bank;
	unsigned int gpio, i, j;
	int ret;

	tgi = FUNC7(&pdev->dev, sizeof(*tgi), GFP_KERNEL);
	if (!tgi)
		return -ENODEV;

	tgi->soc = FUNC15(&pdev->dev);
	tgi->dev = &pdev->dev;

	ret = FUNC17(pdev);
	if (ret < 0)
		return ret;

	tgi->bank_count = ret;

	if (!tgi->bank_count) {
		FUNC4(&pdev->dev, "Missing IRQ resource\n");
		return -ENODEV;
	}

	tgi->gc.label			= "tegra-gpio";
	tgi->gc.request			= tegra_gpio_request;
	tgi->gc.free			= tegra_gpio_free;
	tgi->gc.direction_input		= tegra_gpio_direction_input;
	tgi->gc.get			= tegra_gpio_get;
	tgi->gc.direction_output	= tegra_gpio_direction_output;
	tgi->gc.set			= tegra_gpio_set;
	tgi->gc.get_direction		= tegra_gpio_get_direction;
	tgi->gc.to_irq			= tegra_gpio_to_irq;
	tgi->gc.base			= 0;
	tgi->gc.ngpio			= tgi->bank_count * 32;
	tgi->gc.parent			= &pdev->dev;
	tgi->gc.of_node			= pdev->dev.of_node;

	tgi->ic.name			= "GPIO";
	tgi->ic.irq_ack			= tegra_gpio_irq_ack;
	tgi->ic.irq_mask		= tegra_gpio_irq_mask;
	tgi->ic.irq_unmask		= tegra_gpio_irq_unmask;
	tgi->ic.irq_set_type		= tegra_gpio_irq_set_type;
	tgi->ic.irq_shutdown		= tegra_gpio_irq_shutdown;
#ifdef CONFIG_PM_SLEEP
	tgi->ic.irq_set_wake		= tegra_gpio_irq_set_wake;
#endif

	FUNC18(pdev, tgi);

	if (tgi->soc->debounce_supported)
		tgi->gc.set_config = tegra_gpio_set_config;

	tgi->bank_info = FUNC6(&pdev->dev, tgi->bank_count,
				      sizeof(*tgi->bank_info), GFP_KERNEL);
	if (!tgi->bank_info)
		return -ENOMEM;

	tgi->irq_domain = FUNC10(pdev->dev.of_node,
						tgi->gc.ngpio,
						&irq_domain_simple_ops, NULL);
	if (!tgi->irq_domain)
		return -ENODEV;

	for (i = 0; i < tgi->bank_count; i++) {
		ret = FUNC16(pdev, i);
		if (ret < 0)
			return ret;

		bank = &tgi->bank_info[i];
		bank->bank = i;
		bank->irq = ret;
		bank->tgi = tgi;
	}

	tgi->regs = FUNC8(pdev, 0);
	if (FUNC2(tgi->regs))
		return FUNC3(tgi->regs);

	for (i = 0; i < tgi->bank_count; i++) {
		for (j = 0; j < 4; j++) {
			int gpio = FUNC20(i, j, 0);

			FUNC22(tgi, 0x00, FUNC1(tgi, gpio));
		}
	}

	ret = FUNC5(&pdev->dev, &tgi->gc, tgi);
	if (ret < 0) {
		FUNC11(tgi->irq_domain);
		return ret;
	}

	for (gpio = 0; gpio < tgi->gc.ngpio; gpio++) {
		int irq = FUNC9(tgi->irq_domain, gpio);
		/* No validity check; all Tegra GPIOs are valid IRQs */

		bank = &tgi->bank_info[FUNC0(gpio)];

		FUNC14(irq, bank);
		FUNC13(irq, &tgi->ic, handle_simple_irq);
	}

	for (i = 0; i < tgi->bank_count; i++) {
		bank = &tgi->bank_info[i];

		FUNC12(bank->irq,
						 tegra_gpio_irq_handler, bank);

		for (j = 0; j < 4; j++) {
			FUNC19(&bank->lvl_lock[j]);
			FUNC19(&bank->dbc_lock[j]);
		}
	}

	FUNC21(tgi);

	return 0;
}