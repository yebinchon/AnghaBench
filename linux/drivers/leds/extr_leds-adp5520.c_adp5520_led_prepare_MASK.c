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
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct adp5520_leds_platform_data {int led_on_time; int /*<<< orphan*/  fade_out; int /*<<< orphan*/  fade_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5520_LED1_CURRENT ; 
 int /*<<< orphan*/  ADP5520_LED2_CURRENT ; 
 int /*<<< orphan*/  ADP5520_LED3_CURRENT ; 
 int /*<<< orphan*/  ADP5520_LED_FADE ; 
 int /*<<< orphan*/  ADP5520_LED_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int) ; 
 struct adp5520_leds_platform_data* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct adp5520_leds_platform_data *pdata = FUNC2(&pdev->dev);
	struct device *dev = pdev->dev.parent;
	int ret = 0;

	ret |= FUNC1(dev, ADP5520_LED1_CURRENT, 0);
	ret |= FUNC1(dev, ADP5520_LED2_CURRENT, 0);
	ret |= FUNC1(dev, ADP5520_LED3_CURRENT, 0);
	ret |= FUNC1(dev, ADP5520_LED_TIME, pdata->led_on_time << 6);
	ret |= FUNC1(dev, ADP5520_LED_FADE, FUNC0(pdata->fade_in,
		 pdata->fade_out));

	return ret;
}