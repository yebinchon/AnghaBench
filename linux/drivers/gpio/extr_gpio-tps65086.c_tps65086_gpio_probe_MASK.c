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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct tps65086_gpio {TYPE_1__ chip; TYPE_4__* tps; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tps65086_gpio* FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,struct tps65086_gpio*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct tps65086_gpio*) ; 
 TYPE_1__ template_chip ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tps65086_gpio *gpio;
	int ret;

	gpio = FUNC2(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
	if (!gpio)
		return -ENOMEM;

	FUNC4(pdev, gpio);

	gpio->tps = FUNC1(pdev->dev.parent);
	gpio->chip = template_chip;
	gpio->chip.parent = gpio->tps->dev;

	ret = FUNC3(&gpio->chip, gpio);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Could not register gpiochip, %d\n", ret);
		return ret;
	}

	return 0;
}