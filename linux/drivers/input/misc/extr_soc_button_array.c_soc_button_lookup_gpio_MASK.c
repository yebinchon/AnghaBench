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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_ASIS ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC3 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_desc*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int acpi_index)
{
	struct gpio_desc *desc;
	int gpio;

	desc = FUNC3(dev, NULL, acpi_index, GPIOD_ASIS);
	if (FUNC0(desc))
		return FUNC1(desc);

	gpio = FUNC2(desc);

	FUNC4(desc);

	return gpio;
}