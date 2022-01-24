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
struct edp_ctrl {int /*<<< orphan*/  phy; int /*<<< orphan*/  aux; int /*<<< orphan*/  panel_en_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_CLK_MASK_AUX_CHAN ; 
 int /*<<< orphan*/  FUNC0 (struct edp_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edp_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edp_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct edp_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct edp_ctrl *ctrl, int enable)
{
	if (enable) {
		FUNC3(ctrl);
		FUNC1(ctrl, EDP_CLK_MASK_AUX_CHAN);
		FUNC6(ctrl->phy, 1);
		FUNC5(ctrl->aux, 1);
		FUNC4(ctrl->panel_en_gpio, 1);
	} else {
		FUNC4(ctrl->panel_en_gpio, 0);
		FUNC5(ctrl->aux, 0);
		FUNC6(ctrl->phy, 0);
		FUNC0(ctrl, EDP_CLK_MASK_AUX_CHAN);
		FUNC2(ctrl);
	}
}