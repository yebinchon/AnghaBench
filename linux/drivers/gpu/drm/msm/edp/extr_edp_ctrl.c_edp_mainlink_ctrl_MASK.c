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
struct edp_ctrl {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_MAINLINK_CTRL_ENABLE ; 
 int /*<<< orphan*/  EDP_MAINLINK_CTRL_RESET ; 
 scalar_t__ REG_EDP_MAINLINK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct edp_ctrl *ctrl, int enable)
{
	u32 data = 0;

	FUNC0(ctrl->base + REG_EDP_MAINLINK_CTRL, EDP_MAINLINK_CTRL_RESET);
	/* Make sure fully reset */
	FUNC2();
	FUNC1(500, 1000);

	if (enable)
		data |= EDP_MAINLINK_CTRL_ENABLE;

	FUNC0(ctrl->base + REG_EDP_MAINLINK_CTRL, data);
}