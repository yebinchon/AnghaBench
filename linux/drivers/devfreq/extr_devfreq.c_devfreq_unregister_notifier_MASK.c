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
struct notifier_block {int dummy; } ;
struct devfreq {int /*<<< orphan*/  transition_notifier_list; } ;

/* Variables and functions */
#define  DEVFREQ_TRANSITION_NOTIFIER 128 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC1(struct devfreq *devfreq,
				struct notifier_block *nb,
				unsigned int list)
{
	int ret = 0;

	if (!devfreq)
		return -EINVAL;

	switch (list) {
	case DEVFREQ_TRANSITION_NOTIFIER:
		ret = FUNC0(
				&devfreq->transition_notifier_list, nb);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}