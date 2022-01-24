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
struct iio_trigger {int dummy; } ;
struct iio_hrtimer_info {int /*<<< orphan*/  timer; int /*<<< orphan*/  period; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_hrtimer_info* FUNC2 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC3(struct iio_trigger *trig, bool state)
{
	struct iio_hrtimer_info *trig_info;

	trig_info = FUNC2(trig);

	if (state)
		FUNC1(&trig_info->timer, trig_info->period,
			      HRTIMER_MODE_REL);
	else
		FUNC0(&trig_info->timer);

	return 0;
}