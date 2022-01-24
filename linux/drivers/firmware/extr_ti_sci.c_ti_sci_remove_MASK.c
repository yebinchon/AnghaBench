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
struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct ti_sci_info {int /*<<< orphan*/  chan_rx; int /*<<< orphan*/  chan_tx; int /*<<< orphan*/  node; scalar_t__ users; TYPE_1__ nb; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct ti_sci_info* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ti_sci_info*) ; 
 int /*<<< orphan*/  ti_sci_list_mutex ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ti_sci_info *info;
	struct device *dev = &pdev->dev;
	int ret = 0;

	FUNC4(dev);

	info = FUNC5(pdev);

	if (info->nb.notifier_call)
		FUNC7(&info->nb);

	FUNC2(&ti_sci_list_mutex);
	if (info->users)
		ret = -EBUSY;
	else
		FUNC0(&info->node);
	FUNC3(&ti_sci_list_mutex);

	if (!ret) {
		FUNC6(pdev, info);

		/* Safe to free channels since no more users */
		FUNC1(info->chan_tx);
		FUNC1(info->chan_rx);
	}

	return ret;
}