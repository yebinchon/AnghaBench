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
typedef  int /*<<< orphan*/  u32 ;
struct edp_ctrl {int /*<<< orphan*/  phy; int /*<<< orphan*/  pixel_rate; int /*<<< orphan*/  lane_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_CLK_MASK_LINK_CHAN ; 
 int /*<<< orphan*/  FUNC0 (struct edp_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edp_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edp_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct edp_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct edp_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edp_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct edp_ctrl *ctrl, int enable)
{
	u32 m, n;

	if (enable) {
		/* Enable link channel clocks */
		FUNC1(ctrl, EDP_CLK_MASK_LINK_CHAN);

		FUNC6(ctrl->phy, true, ctrl->lane_cnt);

		FUNC8(ctrl->phy);

		/* Make sure phy is programed */
		FUNC9();
		FUNC7(ctrl->phy);

		FUNC2(ctrl);
		FUNC5(ctrl, ctrl->pixel_rate, &m, &n);
		FUNC4(ctrl, m, n);
		FUNC3(ctrl, 1);
	} else {
		FUNC3(ctrl, 0);

		FUNC6(ctrl->phy, false, 0);
		FUNC0(ctrl, EDP_CLK_MASK_LINK_CHAN);
	}
}