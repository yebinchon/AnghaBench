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
struct devfreq {int stop_polling; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  previous_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devfreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct devfreq *devfreq)
{
	FUNC2(&devfreq->lock);
	if (devfreq->stop_polling) {
		FUNC3(&devfreq->lock);
		return;
	}

	FUNC1(devfreq, devfreq->previous_freq);
	devfreq->stop_polling = true;
	FUNC3(&devfreq->lock);
	FUNC0(&devfreq->work);
}