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
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct acpi_gpio_chip {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  acpi_gpio_chip_dh ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_gpio_chip*) ; 

void FUNC7(struct gpio_chip *chip)
{
	struct acpi_gpio_chip *acpi_gpio;
	acpi_handle handle;
	acpi_status status;

	if (!chip || !chip->parent)
		return;

	handle = FUNC1(chip->parent);
	if (!handle)
		return;

	status = FUNC3(handle, acpi_gpio_chip_dh, (void **)&acpi_gpio);
	if (FUNC0(status)) {
		FUNC5(chip->parent, "Failed to retrieve ACPI GPIO chip\n");
		return;
	}

	FUNC4(acpi_gpio);

	FUNC2(handle, acpi_gpio_chip_dh);
	FUNC6(acpi_gpio);
}