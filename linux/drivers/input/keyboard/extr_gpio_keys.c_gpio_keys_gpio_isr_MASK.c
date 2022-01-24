#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpio_keys_button {scalar_t__ type; int /*<<< orphan*/  code; scalar_t__ wakeup; } ;
struct gpio_button_data {int irq; int /*<<< orphan*/  software_debounce; int /*<<< orphan*/  work; TYPE_2__* input; scalar_t__ suspended; struct gpio_keys_button* button; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EV_KEY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct gpio_button_data *bdata = dev_id;

	FUNC0(irq != bdata->irq);

	if (bdata->button->wakeup) {
		const struct gpio_keys_button *button = bdata->button;

		FUNC4(bdata->input->dev.parent);
		if (bdata->suspended  &&
		    (button->type == 0 || button->type == EV_KEY)) {
			/*
			 * Simulate wakeup key press in case the key has
			 * already released by the time we got interrupt
			 * handler to run.
			 */
			FUNC1(bdata->input, button->code, 1);
		}
	}

	FUNC2(system_wq,
			 &bdata->work,
			 FUNC3(bdata->software_debounce));

	return IRQ_HANDLED;
}