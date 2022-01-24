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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_2__ dev; } ;
struct gpio_button_data {int irq; int key_pressed; int /*<<< orphan*/  lock; scalar_t__ release_delay; int /*<<< orphan*/  release_timer; int /*<<< orphan*/ * code; struct input_dev* input; TYPE_1__* button; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {scalar_t__ wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct gpio_button_data *bdata = dev_id;
	struct input_dev *input = bdata->input;
	unsigned long flags;

	FUNC0(irq != bdata->irq);

	FUNC6(&bdata->lock, flags);

	if (!bdata->key_pressed) {
		if (bdata->button->wakeup)
			FUNC5(bdata->input->dev.parent, 0);

		FUNC1(input, EV_KEY, *bdata->code, 1);
		FUNC2(input);

		if (!bdata->release_delay) {
			FUNC1(input, EV_KEY, *bdata->code, 0);
			FUNC2(input);
			goto out;
		}

		bdata->key_pressed = true;
	}

	if (bdata->release_delay)
		FUNC3(&bdata->release_timer,
			jiffies + FUNC4(bdata->release_delay));
out:
	FUNC7(&bdata->lock, flags);
	return IRQ_HANDLED;
}