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
struct edp_ctrl {int /*<<< orphan*/  phy; int /*<<< orphan*/  power_on; } ;

/* Variables and functions */
 int EDP_TRAIN_RECONFIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct edp_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct edp_ctrl*,int) ; 
 int FUNC2 (struct edp_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct edp_ctrl *ctrl)
{
	int ret;

	/* Do link training only when power is on */
	if (!ctrl->power_on)
		return -EINVAL;

train_start:
	ret = FUNC2(ctrl);
	if (ret == EDP_TRAIN_RECONFIG) {
		/* Re-configure main link */
		FUNC0(ctrl, 0);
		FUNC1(ctrl, 0);
		FUNC3(ctrl->phy, 0);

		/* Make sure link is fully disabled */
		FUNC5();
		FUNC4(500, 1000);

		FUNC3(ctrl->phy, 1);
		FUNC1(ctrl, 1);
		FUNC0(ctrl, 1);
		goto train_start;
	}

	return ret;
}