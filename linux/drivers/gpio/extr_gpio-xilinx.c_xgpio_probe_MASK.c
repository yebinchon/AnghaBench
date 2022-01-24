#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int base; int ngpio; int /*<<< orphan*/  label; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; TYPE_1__* parent; } ;
struct xgpio_instance {int* gpio_state; int* gpio_dir; int* gpio_width; TYPE_3__ gc; int /*<<< orphan*/  regs; int /*<<< orphan*/ * gpio_lock; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_3__*,struct xgpio_instance*) ; 
 struct xgpio_instance* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct xgpio_instance*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xgpio_dir_in ; 
 int /*<<< orphan*/  xgpio_dir_out ; 
 int /*<<< orphan*/  xgpio_get ; 
 int /*<<< orphan*/  FUNC10 (struct xgpio_instance*) ; 
 int /*<<< orphan*/  xgpio_set ; 
 int /*<<< orphan*/  xgpio_set_multiple ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct xgpio_instance *chip;
	int status = 0;
	struct device_node *np = pdev->dev.of_node;
	u32 is_dual;

	chip = FUNC5(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC8(pdev, chip);

	/* Update GPIO state shadow register with default value */
	FUNC7(np, "xlnx,dout-default", &chip->gpio_state[0]);

	/* Update GPIO direction shadow register with default value */
	if (FUNC7(np, "xlnx,tri-default", &chip->gpio_dir[0]))
		chip->gpio_dir[0] = 0xFFFFFFFF;

	/*
	 * Check device node and parent device node for device width
	 * and assume default width of 32
	 */
	if (FUNC7(np, "xlnx,gpio-width", &chip->gpio_width[0]))
		chip->gpio_width[0] = 32;

	FUNC9(&chip->gpio_lock[0]);

	if (FUNC7(np, "xlnx,is-dual", &is_dual))
		is_dual = 0;

	if (is_dual) {
		/* Update GPIO state shadow register with default value */
		FUNC7(np, "xlnx,dout-default-2",
				     &chip->gpio_state[1]);

		/* Update GPIO direction shadow register with default value */
		if (FUNC7(np, "xlnx,tri-default-2",
					 &chip->gpio_dir[1]))
			chip->gpio_dir[1] = 0xFFFFFFFF;

		/*
		 * Check device node and parent device node for device width
		 * and assume default width of 32
		 */
		if (FUNC7(np, "xlnx,gpio2-width",
					 &chip->gpio_width[1]))
			chip->gpio_width[1] = 32;

		FUNC9(&chip->gpio_lock[1]);
	}

	chip->gc.base = -1;
	chip->gc.ngpio = chip->gpio_width[0] + chip->gpio_width[1];
	chip->gc.parent = &pdev->dev;
	chip->gc.direction_input = xgpio_dir_in;
	chip->gc.direction_output = xgpio_dir_out;
	chip->gc.get = xgpio_get;
	chip->gc.set = xgpio_set;
	chip->gc.set_multiple = xgpio_set_multiple;

	chip->gc.label = FUNC3(&pdev->dev);

	chip->regs = FUNC6(pdev, 0);
	if (FUNC0(chip->regs)) {
		FUNC2(&pdev->dev, "failed to ioremap memory resource\n");
		return FUNC1(chip->regs);
	}

	FUNC10(chip);

	status = FUNC4(&pdev->dev, &chip->gc, chip);
	if (status) {
		FUNC2(&pdev->dev, "failed to add GPIO chip\n");
		return status;
	}

	return 0;
}