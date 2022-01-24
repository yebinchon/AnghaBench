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
struct edp_ctrl {int /*<<< orphan*/  vdda_vreg; int /*<<< orphan*/  lvl_vreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDDA_UA_OFF_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct edp_ctrl *ctrl)
{
	FUNC0(ctrl->lvl_vreg);
	FUNC0(ctrl->vdda_vreg);
	FUNC1(ctrl->vdda_vreg, VDDA_UA_OFF_LOAD);
}