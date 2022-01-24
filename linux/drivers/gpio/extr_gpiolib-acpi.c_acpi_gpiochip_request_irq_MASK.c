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
struct acpi_gpio_event {int irqflags; int irq_requested; int /*<<< orphan*/  irq; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,struct acpi_gpio_event*) ;int /*<<< orphan*/  desc; scalar_t__ irq_is_wake; } ;
struct acpi_gpio_chip {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct acpi_gpio_event*),int,char*,struct acpi_gpio_event*) ; 
 scalar_t__ run_edge_events_on_boot ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_gpio_event*) ; 

__attribute__((used)) static void FUNC5(struct acpi_gpio_chip *acpi_gpio,
				      struct acpi_gpio_event *event)
{
	int ret, value;

	ret = FUNC3(event->irq, NULL, event->handler,
				   event->irqflags, "ACPI:Event", event);
	if (ret) {
		FUNC0(acpi_gpio->chip->parent,
			"Failed to setup interrupt handler for %d\n",
			event->irq);
		return;
	}

	if (event->irq_is_wake)
		FUNC1(event->irq);

	event->irq_requested = true;

	/* Make sure we trigger the initial state of edge-triggered IRQs */
	if (run_edge_events_on_boot &&
	    (event->irqflags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING))) {
		value = FUNC2(event->desc);
		if (((event->irqflags & IRQF_TRIGGER_RISING) && value == 1) ||
		    ((event->irqflags & IRQF_TRIGGER_FALLING) && value == 0))
			event->handler(event->irq, event);
	}
}