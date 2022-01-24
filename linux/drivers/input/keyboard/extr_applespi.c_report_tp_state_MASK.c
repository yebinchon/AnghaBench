#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tp_finger {int /*<<< orphan*/  abs_y; int /*<<< orphan*/  abs_x; int /*<<< orphan*/  touch_major; } ;
struct touchpad_protocol {int number_of_fingers; int /*<<< orphan*/  clicked; struct tp_finger* fingers; } ;
struct input_dev {int dummy; } ;
struct applespi_tp_info {scalar_t__ y_min; scalar_t__ y_max; } ;
struct applespi_data {TYPE_1__* pos; int /*<<< orphan*/ * slots; scalar_t__ debug_tp_dim; int /*<<< orphan*/  touchpad_input_dev; struct applespi_tp_info tp_info; } ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  FUNC0 (struct applespi_data*,struct tp_finger const*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,TYPE_1__*,struct tp_finger*) ; 
 struct input_dev* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct applespi_data *applespi,
			    struct touchpad_protocol *t)
{
	const struct tp_finger *f;
	struct input_dev *input;
	const struct applespi_tp_info *tp_info = &applespi->tp_info;
	int i, n;

	/* touchpad_input_dev is set async in worker */
	input = FUNC7(&applespi->touchpad_input_dev);
	if (!input)
		return;	/* touchpad isn't initialized yet */

	n = 0;

	for (i = 0; i < t->number_of_fingers; i++) {
		f = &t->fingers[i];
		if (FUNC5(f->touch_major) == 0)
			continue;
		applespi->pos[n].x = FUNC5(f->abs_x);
		applespi->pos[n].y = tp_info->y_min + tp_info->y_max -
				     FUNC5(f->abs_y);
		n++;

		if (applespi->debug_tp_dim)
			FUNC0(applespi, f);
	}

	FUNC1(input, applespi->slots, applespi->pos, n, 0);

	for (i = 0; i < n; i++)
		FUNC6(input, applespi->slots[i],
				   &applespi->pos[i], &t->fingers[i]);

	FUNC2(input);
	FUNC3(input, BTN_LEFT, t->clicked);

	FUNC4(input);
}