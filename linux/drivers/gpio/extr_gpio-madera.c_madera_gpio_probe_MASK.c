#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct madera_pdata {int gpio_base; } ;
struct TYPE_8__ {int base; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  parent; } ;
struct madera_gpio {TYPE_1__ gpio_chip; struct madera* madera; } ;
struct madera {int type; struct madera_pdata pdata; } ;

/* Variables and functions */
#define  CS42L92 136 
#define  CS47L15 135 
 int /*<<< orphan*/  CS47L15_NUM_GPIOS ; 
#define  CS47L35 134 
 int /*<<< orphan*/  CS47L35_NUM_GPIOS ; 
#define  CS47L85 133 
 int /*<<< orphan*/  CS47L85_NUM_GPIOS ; 
#define  CS47L90 132 
 int /*<<< orphan*/  CS47L90_NUM_GPIOS ; 
#define  CS47L91 131 
#define  CS47L92 130 
 int /*<<< orphan*/  CS47L92_NUM_GPIOS ; 
#define  CS47L93 129 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  WM1840 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 struct madera* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*,struct madera_gpio*) ; 
 struct madera_gpio* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ madera_gpio_chip ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct madera *madera = FUNC2(pdev->dev.parent);
	struct madera_pdata *pdata = &madera->pdata;
	struct madera_gpio *madera_gpio;
	int ret;

	madera_gpio = FUNC4(&pdev->dev, sizeof(*madera_gpio),
				   GFP_KERNEL);
	if (!madera_gpio)
		return -ENOMEM;

	madera_gpio->madera = madera;

	/* Construct suitable gpio_chip from the template in madera_gpio_chip */
	madera_gpio->gpio_chip = madera_gpio_chip;
	madera_gpio->gpio_chip.parent = pdev->dev.parent;

	switch (madera->type) {
	case CS47L15:
		madera_gpio->gpio_chip.ngpio = CS47L15_NUM_GPIOS;
		break;
	case CS47L35:
		madera_gpio->gpio_chip.ngpio = CS47L35_NUM_GPIOS;
		break;
	case CS47L85:
	case WM1840:
		madera_gpio->gpio_chip.ngpio = CS47L85_NUM_GPIOS;
		break;
	case CS47L90:
	case CS47L91:
		madera_gpio->gpio_chip.ngpio = CS47L90_NUM_GPIOS;
		break;
	case CS42L92:
	case CS47L92:
	case CS47L93:
		madera_gpio->gpio_chip.ngpio = CS47L92_NUM_GPIOS;
		break;
	default:
		FUNC1(&pdev->dev, "Unknown chip variant %d\n", madera->type);
		return -EINVAL;
	}

	/* We want to be usable on systems that don't use devicetree or acpi */
	if (pdata->gpio_base)
		madera_gpio->gpio_chip.base = pdata->gpio_base;
	else
		madera_gpio->gpio_chip.base = -1;

	ret = FUNC3(&pdev->dev,
				     &madera_gpio->gpio_chip,
				     madera_gpio);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Could not register gpiochip, %d\n", ret);
		return ret;
	}

	/*
	 * This is part of a composite MFD device which can only be used with
	 * the corresponding pinctrl driver. On all supported silicon the GPIO
	 * to pinctrl mapping is fixed in the silicon, so we register it
	 * explicitly instead of requiring a redundant gpio-ranges in the
	 * devicetree.
	 * In any case we also want to work on systems that don't use devicetree
	 * or acpi.
	 */
	ret = FUNC5(&madera_gpio->gpio_chip, "madera-pinctrl",
				     0, 0, madera_gpio->gpio_chip.ngpio);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to add pin range (%d)\n", ret);
		return ret;
	}

	return 0;
}