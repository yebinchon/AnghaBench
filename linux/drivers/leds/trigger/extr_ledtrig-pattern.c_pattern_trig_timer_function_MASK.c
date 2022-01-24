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
struct timer_list {int dummy; } ;
struct pattern_trig_data {scalar_t__ delta_t; int /*<<< orphan*/  timer; int /*<<< orphan*/  led_cdev; TYPE_2__* curr; TYPE_1__* next; int /*<<< orphan*/  repeat; int /*<<< orphan*/  is_indefinite; } ;
struct TYPE_4__ {scalar_t__ brightness; scalar_t__ delta_t; } ;
struct TYPE_3__ {scalar_t__ brightness; int /*<<< orphan*/  delta_t; } ;

/* Variables and functions */
 scalar_t__ UPDATE_INTERVAL ; 
 struct pattern_trig_data* data ; 
 struct pattern_trig_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct pattern_trig_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct pattern_trig_data*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct pattern_trig_data *data = FUNC0(data, t, timer);

	for (;;) {
		if (!data->is_indefinite && !data->repeat)
			break;

		if (data->curr->brightness == data->next->brightness) {
			/* Step change of brightness */
			FUNC1(data->led_cdev,
					   data->curr->brightness);
			FUNC2(&data->timer,
				  jiffies + FUNC3(data->curr->delta_t));
			if (!data->next->delta_t) {
				/* Skip the tuple with zero duration */
				FUNC5(data);
			}
			/* Select next tuple */
			FUNC5(data);
		} else {
			/* Gradual dimming */

			/*
			 * If the accumulation time is larger than current
			 * tuple's duration, we should go next one and re-check
			 * if we repeated done.
			 */
			if (data->delta_t > data->curr->delta_t) {
				FUNC5(data);
				continue;
			}

			FUNC1(data->led_cdev,
					   FUNC4(data));
			FUNC2(&data->timer,
				  jiffies + FUNC3(UPDATE_INTERVAL));

			/* Accumulate the gradual dimming time */
			data->delta_t += UPDATE_INTERVAL;
		}

		break;
	}
}