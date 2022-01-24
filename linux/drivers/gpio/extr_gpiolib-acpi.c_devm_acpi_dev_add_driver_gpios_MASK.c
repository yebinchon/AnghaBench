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
struct device {int dummy; } ;
struct acpi_gpio_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct acpi_gpio_mapping const*) ; 
 int /*<<< orphan*/  devm_acpi_dev_release_driver_gpios ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int FUNC5(struct device *dev,
				   const struct acpi_gpio_mapping *gpios)
{
	void *res;
	int ret;

	res = FUNC3(devm_acpi_dev_release_driver_gpios, 0, GFP_KERNEL);
	if (!res)
		return -ENOMEM;

	ret = FUNC1(FUNC0(dev), gpios);
	if (ret) {
		FUNC4(res);
		return ret;
	}
	FUNC2(dev, res);
	return 0;
}