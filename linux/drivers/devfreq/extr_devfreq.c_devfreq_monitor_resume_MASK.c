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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct devfreq {int stop_polling; unsigned long previous_freq; int /*<<< orphan*/  lock; TYPE_2__ dev; TYPE_1__* profile; int /*<<< orphan*/  last_stat_updated; int /*<<< orphan*/  work; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_cur_freq ) (int /*<<< orphan*/ ,unsigned long*) ;scalar_t__ polling_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devfreq_wq ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

void FUNC6(struct devfreq *devfreq)
{
	unsigned long freq;

	FUNC2(&devfreq->lock);
	if (!devfreq->stop_polling)
		goto out;

	if (!FUNC0(&devfreq->work) &&
			devfreq->profile->polling_ms)
		FUNC4(devfreq_wq, &devfreq->work,
			FUNC1(devfreq->profile->polling_ms));

	devfreq->last_stat_updated = jiffies;
	devfreq->stop_polling = false;

	if (devfreq->profile->get_cur_freq &&
		!devfreq->profile->get_cur_freq(devfreq->dev.parent, &freq))
		devfreq->previous_freq = freq;

out:
	FUNC3(&devfreq->lock);
}