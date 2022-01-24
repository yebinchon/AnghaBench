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
struct gpio_chip {int /*<<< orphan*/  parent; int /*<<< orphan*/  names; } ;
struct acpi_gpio_chip {int /*<<< orphan*/  deferred_req_irqs_list_entry; int /*<<< orphan*/  events; struct gpio_chip* chip; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  acpi_gpio_chip_dh ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_gpio_chip*) ; 
 struct acpi_gpio_chip* FUNC11 (int,int /*<<< orphan*/ ) ; 

void FUNC12(struct gpio_chip *chip)
{
	struct acpi_gpio_chip *acpi_gpio;
	acpi_handle handle;
	acpi_status status;

	if (!chip || !chip->parent)
		return;

	handle = FUNC1(chip->parent);
	if (!handle)
		return;

	acpi_gpio = FUNC11(sizeof(*acpi_gpio), GFP_KERNEL);
	if (!acpi_gpio) {
		FUNC7(chip->parent,
			"Failed to allocate memory for ACPI GPIO chip\n");
		return;
	}

	acpi_gpio->chip = chip;
	FUNC2(&acpi_gpio->events);
	FUNC2(&acpi_gpio->deferred_req_irqs_list_entry);

	status = FUNC3(handle, acpi_gpio_chip_dh, acpi_gpio);
	if (FUNC0(status)) {
		FUNC7(chip->parent, "Failed to attach ACPI GPIO chip\n");
		FUNC10(acpi_gpio);
		return;
	}

	if (!chip->names)
		FUNC9(chip, FUNC8(chip->parent));

	FUNC4(acpi_gpio);
	FUNC5(acpi_gpio);
	FUNC6(handle);
}