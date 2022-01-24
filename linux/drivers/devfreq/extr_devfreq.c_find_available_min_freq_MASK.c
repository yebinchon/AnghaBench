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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct devfreq {TYPE_1__ dev; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_pm_opp*) ; 

__attribute__((used)) static unsigned long FUNC3(struct devfreq *devfreq)
{
	struct dev_pm_opp *opp;
	unsigned long min_freq = 0;

	opp = FUNC1(devfreq->dev.parent, &min_freq);
	if (FUNC0(opp))
		min_freq = 0;
	else
		FUNC2(opp);

	return min_freq;
}