#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct dev_pm_opp* devfreq; int /*<<< orphan*/  cur_freq; } ;
struct panfrost_device {TYPE_2__* pdev; TYPE_1__ devfreq; int /*<<< orphan*/  clock; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  initial_freq; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_GOV_SIMPLE_ONDEMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct dev_pm_opp*) ; 
 int FUNC2 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__ panfrost_devfreq_profile ; 
 int /*<<< orphan*/  FUNC9 (struct panfrost_device*) ; 

int FUNC10(struct panfrost_device *pfdev)
{
	int ret;
	struct dev_pm_opp *opp;

	ret = FUNC4(&pfdev->pdev->dev);
	if (ret == -ENODEV) /* Optional, continue without devfreq */
		return 0;
	else if (ret)
		return ret;

	FUNC9(pfdev);

	pfdev->devfreq.cur_freq = FUNC3(pfdev->clock);

	opp = FUNC7(&pfdev->pdev->dev, &pfdev->devfreq.cur_freq, 0);
	if (FUNC1(opp))
		return FUNC2(opp);

	panfrost_devfreq_profile.initial_freq = pfdev->devfreq.cur_freq;
	FUNC6(opp);

	pfdev->devfreq.devfreq = FUNC8(&pfdev->pdev->dev,
			&panfrost_devfreq_profile, DEVFREQ_GOV_SIMPLE_ONDEMAND,
			NULL);
	if (FUNC1(pfdev->devfreq.devfreq)) {
		FUNC0(&pfdev->pdev->dev, "Couldn't initialize GPU devfreq\n");
		ret = FUNC2(pfdev->devfreq.devfreq);
		pfdev->devfreq.devfreq = NULL;
		FUNC5(&pfdev->pdev->dev);
		return ret;
	}

	return 0;
}