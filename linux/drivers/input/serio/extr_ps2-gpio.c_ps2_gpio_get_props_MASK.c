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
struct ps2_gpio_data {int /*<<< orphan*/  write_enable; void* gpio_clk; void* gpio_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				 struct ps2_gpio_data *drvdata)
{
	drvdata->gpio_data = FUNC4(dev, "data", GPIOD_IN);
	if (FUNC0(drvdata->gpio_data)) {
		FUNC2(dev, "failed to request data gpio: %ld",
			FUNC1(drvdata->gpio_data));
		return FUNC1(drvdata->gpio_data);
	}

	drvdata->gpio_clk = FUNC4(dev, "clk", GPIOD_IN);
	if (FUNC0(drvdata->gpio_clk)) {
		FUNC2(dev, "failed to request clock gpio: %ld",
			FUNC1(drvdata->gpio_clk));
		return FUNC1(drvdata->gpio_clk);
	}

	drvdata->write_enable = FUNC3(dev,
				"write-enable");

	return 0;
}