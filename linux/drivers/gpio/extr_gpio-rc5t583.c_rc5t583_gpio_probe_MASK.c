#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rc5t583_platform_data {int gpio_base; } ;
struct TYPE_5__ {char* label; int can_sleep; int base; TYPE_1__* parent; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  to_irq; int /*<<< orphan*/  get; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  owner; } ;
struct rc5t583_gpio {TYPE_3__ gpio_chip; struct rc5t583* rc5t583; } ;
struct rc5t583 {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC5T583_MAX_GPIO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct rc5t583* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rc5t583_platform_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_3__*,struct rc5t583_gpio*) ; 
 struct rc5t583_gpio* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct rc5t583_gpio*) ; 
 int /*<<< orphan*/  rc5t583_gpio_dir_input ; 
 int /*<<< orphan*/  rc5t583_gpio_dir_output ; 
 int /*<<< orphan*/  rc5t583_gpio_free ; 
 int /*<<< orphan*/  rc5t583_gpio_get ; 
 int /*<<< orphan*/  rc5t583_gpio_set ; 
 int /*<<< orphan*/  rc5t583_gpio_to_irq ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rc5t583 *rc5t583 = FUNC0(pdev->dev.parent);
	struct rc5t583_platform_data *pdata = FUNC1(rc5t583->dev);
	struct rc5t583_gpio *rc5t583_gpio;

	rc5t583_gpio = FUNC3(&pdev->dev, sizeof(*rc5t583_gpio),
					GFP_KERNEL);
	if (!rc5t583_gpio)
		return -ENOMEM;

	rc5t583_gpio->gpio_chip.label = "gpio-rc5t583",
	rc5t583_gpio->gpio_chip.owner = THIS_MODULE,
	rc5t583_gpio->gpio_chip.free = rc5t583_gpio_free,
	rc5t583_gpio->gpio_chip.direction_input = rc5t583_gpio_dir_input,
	rc5t583_gpio->gpio_chip.direction_output = rc5t583_gpio_dir_output,
	rc5t583_gpio->gpio_chip.set = rc5t583_gpio_set,
	rc5t583_gpio->gpio_chip.get = rc5t583_gpio_get,
	rc5t583_gpio->gpio_chip.to_irq = rc5t583_gpio_to_irq,
	rc5t583_gpio->gpio_chip.ngpio = RC5T583_MAX_GPIO,
	rc5t583_gpio->gpio_chip.can_sleep = true,
	rc5t583_gpio->gpio_chip.parent = &pdev->dev;
	rc5t583_gpio->gpio_chip.base = -1;
	rc5t583_gpio->rc5t583 = rc5t583;

	if (pdata && pdata->gpio_base)
		rc5t583_gpio->gpio_chip.base = pdata->gpio_base;

	FUNC4(pdev, rc5t583_gpio);

	return FUNC2(&pdev->dev, &rc5t583_gpio->gpio_chip,
				      rc5t583_gpio);
}