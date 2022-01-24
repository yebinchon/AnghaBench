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
struct devfreq {int /*<<< orphan*/  lock; TYPE_1__* profile; int /*<<< orphan*/  work; scalar_t__ stop_polling; } ;
struct TYPE_2__ {unsigned int polling_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devfreq_wq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct devfreq *devfreq, unsigned int *delay)
{
	unsigned int cur_delay = devfreq->profile->polling_ms;
	unsigned int new_delay = *delay;

	FUNC2(&devfreq->lock);
	devfreq->profile->polling_ms = new_delay;

	if (devfreq->stop_polling)
		goto out;

	/* if new delay is zero, stop polling */
	if (!new_delay) {
		FUNC3(&devfreq->lock);
		FUNC0(&devfreq->work);
		return;
	}

	/* if current delay is zero, start polling with new delay */
	if (!cur_delay) {
		FUNC4(devfreq_wq, &devfreq->work,
			FUNC1(devfreq->profile->polling_ms));
		goto out;
	}

	/* if current delay is greater than new delay, restart polling */
	if (cur_delay > new_delay) {
		FUNC3(&devfreq->lock);
		FUNC0(&devfreq->work);
		FUNC2(&devfreq->lock);
		if (!devfreq->stop_polling)
			FUNC4(devfreq_wq, &devfreq->work,
				FUNC1(devfreq->profile->polling_ms));
	}
out:
	FUNC3(&devfreq->lock);
}