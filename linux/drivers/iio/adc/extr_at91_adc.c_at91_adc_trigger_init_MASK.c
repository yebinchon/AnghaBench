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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct at91_adc_state {int trigger_number; int /*<<< orphan*/ ** trig; TYPE_1__* trigger_list; int /*<<< orphan*/  use_external; } ;
struct TYPE_2__ {scalar_t__ is_external; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (struct iio_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct at91_adc_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *idev)
{
	struct at91_adc_state *st = FUNC3(idev);
	int i, ret;

	st->trig = FUNC2(&idev->dev,
				st->trigger_number, sizeof(*st->trig),
				GFP_KERNEL);

	if (st->trig == NULL) {
		ret = -ENOMEM;
		goto error_ret;
	}

	for (i = 0; i < st->trigger_number; i++) {
		if (st->trigger_list[i].is_external && !(st->use_external))
			continue;

		st->trig[i] = FUNC0(idev,
							st->trigger_list + i);
		if (st->trig[i] == NULL) {
			FUNC1(&idev->dev,
				"Could not allocate trigger %d\n", i);
			ret = -ENOMEM;
			goto error_trigger;
		}
	}

	return 0;

error_trigger:
	for (i--; i >= 0; i--) {
		FUNC5(st->trig[i]);
		FUNC4(st->trig[i]);
	}
error_ret:
	return ret;
}