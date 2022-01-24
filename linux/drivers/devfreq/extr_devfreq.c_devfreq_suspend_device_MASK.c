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
struct devfreq {scalar_t__ suspend_freq; TYPE_1__* governor; int /*<<< orphan*/  suspend_count; } ;
struct TYPE_2__ {int (* event_handler ) (struct devfreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_GOV_SUSPEND ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct devfreq*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct devfreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct devfreq *devfreq)
{
	int ret;

	if (!devfreq)
		return -EINVAL;

	if (FUNC0(&devfreq->suspend_count) > 1)
		return 0;

	if (devfreq->governor) {
		ret = devfreq->governor->event_handler(devfreq,
					DEVFREQ_GOV_SUSPEND, NULL);
		if (ret)
			return ret;
	}

	if (devfreq->suspend_freq) {
		ret = FUNC1(devfreq, devfreq->suspend_freq, 0);
		if (ret)
			return ret;
	}

	return 0;
}