#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * led_port ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raq_power_off_led ; 
 int /*<<< orphan*/  raq_web_led ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct resource *res;
	int retval;

	res = FUNC3(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EBUSY;

	led_port = FUNC0(&pdev->dev, res->start, FUNC4(res));
	if (!led_port)
		return -ENOMEM;

	retval = FUNC1(&pdev->dev, &raq_power_off_led);
	if (retval)
		goto err_null;

	retval = FUNC1(&pdev->dev, &raq_web_led);
	if (retval)
		goto err_unregister;

	return 0;

err_unregister:
	FUNC2(&raq_power_off_led);

err_null:
	led_port = NULL;

	return retval;
}