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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct led_platform_data {int num_leds; } ;
struct da9052_pdata {struct led_platform_data* pled; } ;
struct da9052_led {int /*<<< orphan*/  cdev; } ;
struct da9052 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct da9052_led*,int /*<<< orphan*/ ) ; 
 struct da9052* FUNC1 (int /*<<< orphan*/ ) ; 
 struct da9052_pdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct da9052_led* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct da9052_led *led = FUNC4(pdev);
	struct da9052_pdata *pdata;
	struct da9052 *da9052;
	struct led_platform_data *pled;
	int i;

	da9052 = FUNC1(pdev->dev.parent);
	pdata = FUNC2(da9052->dev);
	pled = pdata->pled;

	for (i = 0; i < pled->num_leds; i++) {
		FUNC0(&led[i], LED_OFF);
		FUNC3(&led[i].cdev);
	}

	return 0;
}