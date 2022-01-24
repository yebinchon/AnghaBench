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
struct acpi_gpio_chip {int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  conns; struct gpio_chip* chip; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_GPIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_gpio_adr_space_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct acpi_gpio_chip *achip)
{
	struct gpio_chip *chip = achip->chip;
	acpi_handle handle = FUNC1(chip->parent);
	acpi_status status;

	FUNC2(&achip->conns);
	FUNC5(&achip->conn_lock);
	status = FUNC3(handle, ACPI_ADR_SPACE_GPIO,
						    acpi_gpio_adr_space_handler,
						    NULL, achip);
	if (FUNC0(status))
		FUNC4(chip->parent,
		        "Failed to install GPIO OpRegion handler\n");
}