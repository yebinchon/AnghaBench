#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct device* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int base; int can_sleep; int /*<<< orphan*/  dbg_show; struct device* parent; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  label; } ;
struct crystalcove_gpio {TYPE_1__ chip; int /*<<< orphan*/  regmap; int /*<<< orphan*/  buslock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYSTALCOVE_VGPIO_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  crystalcove_gpio_dbg_show ; 
 int /*<<< orphan*/  crystalcove_gpio_dir_in ; 
 int /*<<< orphan*/  crystalcove_gpio_dir_out ; 
 int /*<<< orphan*/  crystalcove_gpio_get ; 
 int /*<<< orphan*/  crystalcove_gpio_irq_handler ; 
 int /*<<< orphan*/  crystalcove_gpio_set ; 
 int /*<<< orphan*/  crystalcove_irqchip ; 
 struct intel_soc_pmic* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*,struct crystalcove_gpio*) ; 
 struct crystalcove_gpio* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct crystalcove_gpio*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crystalcove_gpio*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int irq = FUNC7(pdev, 0);
	struct crystalcove_gpio *cg;
	int retval;
	struct device *dev = pdev->dev.parent;
	struct intel_soc_pmic *pmic = FUNC0(dev);

	if (irq < 0)
		return irq;

	cg = FUNC3(&pdev->dev, sizeof(*cg), GFP_KERNEL);
	if (!cg)
		return -ENOMEM;

	FUNC8(pdev, cg);

	FUNC6(&cg->buslock);
	cg->chip.label = KBUILD_MODNAME;
	cg->chip.direction_input = crystalcove_gpio_dir_in;
	cg->chip.direction_output = crystalcove_gpio_dir_out;
	cg->chip.get = crystalcove_gpio_get;
	cg->chip.set = crystalcove_gpio_set;
	cg->chip.base = -1;
	cg->chip.ngpio = CRYSTALCOVE_VGPIO_NUM;
	cg->chip.can_sleep = true;
	cg->chip.parent = dev;
	cg->chip.dbg_show = crystalcove_gpio_dbg_show;
	cg->regmap = pmic->regmap;

	retval = FUNC2(&pdev->dev, &cg->chip, cg);
	if (retval) {
		FUNC1(&pdev->dev, "add gpio chip error: %d\n", retval);
		return retval;
	}

	FUNC4(&cg->chip, &crystalcove_irqchip, 0,
				    handle_simple_irq, IRQ_TYPE_NONE);

	retval = FUNC9(irq, NULL, crystalcove_gpio_irq_handler,
				      IRQF_ONESHOT, KBUILD_MODNAME, cg);

	if (retval) {
		FUNC1(&pdev->dev, "request irq failed: %d\n", retval);
		return retval;
	}

	FUNC5(&cg->chip, &crystalcove_irqchip, irq);

	return 0;
}