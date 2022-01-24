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
typedef  int /*<<< orphan*/  u32 ;
struct devfreq {int /*<<< orphan*/  min_freq; int /*<<< orphan*/  scaling_min_freq; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  scaling_max_freq; TYPE_1__* governor; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int (* get_target_freq ) (struct devfreq*,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_FLAG_LEAST_UPPER_BOUND ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct devfreq*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct devfreq*,unsigned long*) ; 

int FUNC6(struct devfreq *devfreq)
{
	unsigned long freq, min_freq, max_freq;
	int err = 0;
	u32 flags = 0;

	if (!FUNC4(&devfreq->lock)) {
		FUNC0(true, "devfreq->lock must be locked by the caller.\n");
		return -EINVAL;
	}

	if (!devfreq->governor)
		return -EINVAL;

	/* Reevaluate the proper frequency */
	err = devfreq->governor->get_target_freq(devfreq, &freq);
	if (err)
		return err;

	/*
	 * Adjust the frequency with user freq, QoS and available freq.
	 *
	 * List from the highest priority
	 * max_freq
	 * min_freq
	 */
	max_freq = FUNC3(devfreq->scaling_max_freq, devfreq->max_freq);
	min_freq = FUNC2(devfreq->scaling_min_freq, devfreq->min_freq);

	if (freq < min_freq) {
		freq = min_freq;
		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
	}
	if (freq > max_freq) {
		freq = max_freq;
		flags |= DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use LUB */
	}

	return FUNC1(devfreq, freq, flags);

}