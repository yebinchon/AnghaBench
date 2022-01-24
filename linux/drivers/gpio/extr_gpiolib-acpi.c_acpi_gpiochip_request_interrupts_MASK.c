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
struct gpio_chip {int /*<<< orphan*/  parent; int /*<<< orphan*/  to_irq; } ;
struct acpi_gpio_chip {int /*<<< orphan*/  deferred_req_irqs_list_entry; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  acpi_gpio_chip_dh ; 
 int /*<<< orphan*/  acpi_gpio_deferred_req_irqs_done ; 
 int /*<<< orphan*/  acpi_gpio_deferred_req_irqs_list ; 
 int /*<<< orphan*/  acpi_gpio_deferred_req_irqs_lock ; 
 int /*<<< orphan*/  acpi_gpiochip_alloc_event ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct acpi_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct gpio_chip *chip)
{
	struct acpi_gpio_chip *acpi_gpio;
	acpi_handle handle;
	acpi_status status;
	bool defer;

	if (!chip->parent || !chip->to_irq)
		return;

	handle = FUNC1(chip->parent);
	if (!handle)
		return;

	status = FUNC2(handle, acpi_gpio_chip_dh, (void **)&acpi_gpio);
	if (FUNC0(status))
		return;

	FUNC4(handle, "_AEI",
			    acpi_gpiochip_alloc_event, acpi_gpio);

	FUNC6(&acpi_gpio_deferred_req_irqs_lock);
	defer = !acpi_gpio_deferred_req_irqs_done;
	if (defer)
		FUNC5(&acpi_gpio->deferred_req_irqs_list_entry,
			 &acpi_gpio_deferred_req_irqs_list);
	FUNC7(&acpi_gpio_deferred_req_irqs_lock);

	if (defer)
		return;

	FUNC3(acpi_gpio);
}