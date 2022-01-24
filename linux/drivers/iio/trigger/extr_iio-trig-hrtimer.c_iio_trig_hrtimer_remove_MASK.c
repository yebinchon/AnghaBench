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
struct iio_sw_trigger {int /*<<< orphan*/  trigger; } ;
struct iio_hrtimer_info {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_hrtimer_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_hrtimer_info*) ; 

__attribute__((used)) static int FUNC5(struct iio_sw_trigger *swt)
{
	struct iio_hrtimer_info *trig_info;

	trig_info = FUNC2(swt->trigger);

	FUNC3(swt->trigger);

	/* cancel the timer after unreg to make sure no one rearms it */
	FUNC0(&trig_info->timer);
	FUNC1(swt->trigger);
	FUNC4(trig_info);

	return 0;
}