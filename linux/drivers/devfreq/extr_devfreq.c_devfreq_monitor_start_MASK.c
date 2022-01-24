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
struct devfreq {TYPE_1__* profile; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {scalar_t__ polling_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfreq_monitor ; 
 int /*<<< orphan*/  devfreq_wq ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct devfreq *devfreq)
{
	FUNC0(&devfreq->work, devfreq_monitor);
	if (devfreq->profile->polling_ms)
		FUNC2(devfreq_wq, &devfreq->work,
			FUNC1(devfreq->profile->polling_ms));
}