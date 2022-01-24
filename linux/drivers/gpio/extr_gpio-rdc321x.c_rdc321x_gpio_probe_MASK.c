#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct rdc321x_gpio_pdata {int /*<<< orphan*/  max_gpios; int /*<<< orphan*/  sb_pdev; } ;
struct TYPE_2__ {char* label; int /*<<< orphan*/  ngpio; scalar_t__ base; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  owner; } ;
struct rdc321x_gpio {TYPE_1__ chip; int /*<<< orphan*/ * data_reg; scalar_t__ reg2_data_base; int /*<<< orphan*/  sb_pdev; scalar_t__ reg1_data_base; scalar_t__ reg2_ctrl_base; scalar_t__ reg1_ctrl_base; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rdc321x_gpio_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct rdc321x_gpio*) ; 
 struct rdc321x_gpio* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rdc321x_gpio*) ; 
 int /*<<< orphan*/  rdc_gpio_config ; 
 int /*<<< orphan*/  rdc_gpio_direction_input ; 
 int /*<<< orphan*/  rdc_gpio_get_value ; 
 int /*<<< orphan*/  rdc_gpio_set_value ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int err;
	struct resource *r;
	struct rdc321x_gpio *rdc321x_gpio_dev;
	struct rdc321x_gpio_pdata *pdata;

	pdata = FUNC1(&pdev->dev);
	if (!pdata) {
		FUNC0(&pdev->dev, "no platform data supplied\n");
		return -ENODEV;
	}

	rdc321x_gpio_dev = FUNC4(&pdev->dev, sizeof(struct rdc321x_gpio),
					GFP_KERNEL);
	if (!rdc321x_gpio_dev)
		return -ENOMEM;

	r = FUNC6(pdev, IORESOURCE_IO, "gpio-reg1");
	if (!r) {
		FUNC0(&pdev->dev, "failed to get gpio-reg1 resource\n");
		return -ENODEV;
	}

	FUNC8(&rdc321x_gpio_dev->lock);
	rdc321x_gpio_dev->sb_pdev = pdata->sb_pdev;
	rdc321x_gpio_dev->reg1_ctrl_base = r->start;
	rdc321x_gpio_dev->reg1_data_base = r->start + 0x4;

	r = FUNC6(pdev, IORESOURCE_IO, "gpio-reg2");
	if (!r) {
		FUNC0(&pdev->dev, "failed to get gpio-reg2 resource\n");
		return -ENODEV;
	}

	rdc321x_gpio_dev->reg2_ctrl_base = r->start;
	rdc321x_gpio_dev->reg2_data_base = r->start + 0x4;

	rdc321x_gpio_dev->chip.label = "rdc321x-gpio";
	rdc321x_gpio_dev->chip.owner = THIS_MODULE;
	rdc321x_gpio_dev->chip.direction_input = rdc_gpio_direction_input;
	rdc321x_gpio_dev->chip.direction_output = rdc_gpio_config;
	rdc321x_gpio_dev->chip.get = rdc_gpio_get_value;
	rdc321x_gpio_dev->chip.set = rdc_gpio_set_value;
	rdc321x_gpio_dev->chip.base = 0;
	rdc321x_gpio_dev->chip.ngpio = pdata->max_gpios;

	FUNC7(pdev, rdc321x_gpio_dev);

	/* This might not be, what others (BIOS, bootloader, etc.)
	   wrote to these registers before, but it's a good guess. Still
	   better than just using 0xffffffff. */
	err = FUNC5(rdc321x_gpio_dev->sb_pdev,
					rdc321x_gpio_dev->reg1_data_base,
					&rdc321x_gpio_dev->data_reg[0]);
	if (err)
		return err;

	err = FUNC5(rdc321x_gpio_dev->sb_pdev,
					rdc321x_gpio_dev->reg2_data_base,
					&rdc321x_gpio_dev->data_reg[1]);
	if (err)
		return err;

	FUNC2(&pdev->dev, "registering %d GPIOs\n",
					rdc321x_gpio_dev->chip.ngpio);
	return FUNC3(&pdev->dev, &rdc321x_gpio_dev->chip,
				      rdc321x_gpio_dev);
}