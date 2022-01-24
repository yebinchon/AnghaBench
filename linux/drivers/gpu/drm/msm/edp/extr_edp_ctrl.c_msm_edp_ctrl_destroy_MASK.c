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
struct edp_ctrl {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/ * edid; int /*<<< orphan*/ * aux; TYPE_1__* pdev; int /*<<< orphan*/ * workqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct edp_ctrl *ctrl)
{
	if (!ctrl)
		return;

	if (ctrl->workqueue) {
		FUNC1(ctrl->workqueue);
		FUNC0(ctrl->workqueue);
		ctrl->workqueue = NULL;
	}

	if (ctrl->aux) {
		FUNC3(&ctrl->pdev->dev, ctrl->aux);
		ctrl->aux = NULL;
	}

	FUNC2(ctrl->edid);
	ctrl->edid = NULL;

	FUNC4(&ctrl->dev_mutex);
}