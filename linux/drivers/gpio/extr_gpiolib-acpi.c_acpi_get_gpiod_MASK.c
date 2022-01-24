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
struct gpio_chip {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct gpio_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_gpiochip_find ; 
 struct gpio_chip* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC4 (struct gpio_chip*,int) ; 

__attribute__((used)) static struct gpio_desc *FUNC5(char *path, int pin)
{
	struct gpio_chip *chip;
	acpi_handle handle;
	acpi_status status;

	status = FUNC2(NULL, path, &handle);
	if (FUNC0(status))
		return FUNC1(-ENODEV);

	chip = FUNC3(handle, acpi_gpiochip_find);
	if (!chip)
		return FUNC1(-EPROBE_DEFER);

	return FUNC4(chip, pin);
}