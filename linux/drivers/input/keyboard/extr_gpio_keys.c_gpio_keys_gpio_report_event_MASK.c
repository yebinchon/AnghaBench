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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct gpio_keys_button {int type; int value; int /*<<< orphan*/  code; } ;
struct gpio_button_data {int /*<<< orphan*/ * code; int /*<<< orphan*/  gpiod; struct input_dev* input; struct gpio_keys_button* button; } ;

/* Variables and functions */
 unsigned int EV_ABS ; 
 unsigned int EV_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct gpio_button_data *bdata)
{
	const struct gpio_keys_button *button = bdata->button;
	struct input_dev *input = bdata->input;
	unsigned int type = button->type ?: EV_KEY;
	int state;

	state = FUNC1(bdata->gpiod);
	if (state < 0) {
		FUNC0(input->dev.parent,
			"failed to get gpio state: %d\n", state);
		return;
	}

	if (type == EV_ABS) {
		if (state)
			FUNC2(input, type, button->code, button->value);
	} else {
		FUNC2(input, type, *bdata->code, state);
	}
	FUNC3(input);
}