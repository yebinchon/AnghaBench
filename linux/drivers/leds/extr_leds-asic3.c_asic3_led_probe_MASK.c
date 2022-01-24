#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct led_classdev {int dummy; } ;
struct asic3_led {TYPE_1__* cdev; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  blink_set ; 
 int /*<<< orphan*/  brightness_set ; 
 struct asic3_led* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct asic3_led *led = FUNC0(&pdev->dev);
	int ret;

	ret = FUNC4(pdev);
	if (ret < 0)
		return ret;

	led->cdev = FUNC1(&pdev->dev, sizeof(struct led_classdev),
				GFP_KERNEL);
	if (!led->cdev) {
		ret = -ENOMEM;
		goto out;
	}

	led->cdev->name = led->name;
	led->cdev->flags = LED_CORE_SUSPENDRESUME;
	led->cdev->brightness_set = brightness_set;
	led->cdev->blink_set = blink_set;
	led->cdev->default_trigger = led->default_trigger;

	ret = FUNC2(&pdev->dev, led->cdev);
	if (ret < 0)
		goto out;

	return 0;

out:
	(void) FUNC3(pdev);
	return ret;
}