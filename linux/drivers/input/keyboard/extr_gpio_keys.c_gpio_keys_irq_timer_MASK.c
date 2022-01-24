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
struct timer_list {int dummy; } ;
struct input_dev {int dummy; } ;
struct gpio_button_data {int key_pressed; int /*<<< orphan*/  lock; int /*<<< orphan*/ * code; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 struct gpio_button_data* bdata ; 
 struct gpio_button_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  release_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct gpio_button_data *bdata = FUNC0(bdata, t, release_timer);
	struct input_dev *input = bdata->input;
	unsigned long flags;

	FUNC3(&bdata->lock, flags);
	if (bdata->key_pressed) {
		FUNC1(input, EV_KEY, *bdata->code, 0);
		FUNC2(input);
		bdata->key_pressed = false;
	}
	FUNC4(&bdata->lock, flags);
}