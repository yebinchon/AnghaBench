#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rs690_watermark {int lb_request_fifo_depth; } ;
struct TYPE_5__ {TYPE_3__** crtcs; int /*<<< orphan*/  mode_config_initialized; } ;
struct radeon_device {int disp_priority; scalar_t__ family; TYPE_2__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ CHIP_RS690 ; 
 scalar_t__ CHIP_RS740 ; 
 scalar_t__ CHIP_RS780 ; 
 scalar_t__ CHIP_RS880 ; 
 int C_000104_MC_DISP0R_INIT_LAT ; 
 int C_000104_MC_DISP1R_INIT_LAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000104_MC_INIT_MISC_LAT_TIMER ; 
 int /*<<< orphan*/  R_006548_D1MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_00654C_D1MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  R_006C9C_DCP_CONTROL ; 
 int /*<<< orphan*/  R_006D48_D2MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_006D4C_D2MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  R_006D58_LB_MAX_REQ_OUTSTANDING ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct rs690_watermark*,struct rs690_watermark*,struct drm_display_mode*,struct drm_display_mode*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,TYPE_3__*,struct rs690_watermark*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ; 

void FUNC9(struct radeon_device *rdev)
{
	struct drm_display_mode *mode0 = NULL;
	struct drm_display_mode *mode1 = NULL;
	struct rs690_watermark wm0_high, wm0_low;
	struct rs690_watermark wm1_high, wm1_low;
	u32 tmp;
	u32 d1mode_priority_a_cnt, d1mode_priority_b_cnt;
	u32 d2mode_priority_a_cnt, d2mode_priority_b_cnt;

	if (!rdev->mode_info.mode_config_initialized)
		return;

	FUNC5(rdev);

	if (rdev->mode_info.crtcs[0]->base.enabled)
		mode0 = &rdev->mode_info.crtcs[0]->base.mode;
	if (rdev->mode_info.crtcs[1]->base.enabled)
		mode1 = &rdev->mode_info.crtcs[1]->base.mode;
	/*
	 * Set display0/1 priority up in the memory controller for
	 * modes if the user specifies HIGH for displaypriority
	 * option.
	 */
	if ((rdev->disp_priority == 2) &&
	    ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))) {
		tmp = FUNC0(R_000104_MC_INIT_MISC_LAT_TIMER);
		tmp &= C_000104_MC_DISP0R_INIT_LAT;
		tmp &= C_000104_MC_DISP1R_INIT_LAT;
		if (mode0)
			tmp |= FUNC1(1);
		if (mode1)
			tmp |= FUNC2(1);
		FUNC4(R_000104_MC_INIT_MISC_LAT_TIMER, tmp);
	}
	FUNC8(rdev, mode0, mode1);

	if ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))
		FUNC3(R_006C9C_DCP_CONTROL, 0);
	if ((rdev->family == CHIP_RS780) || (rdev->family == CHIP_RS880))
		FUNC3(R_006C9C_DCP_CONTROL, 2);

	FUNC7(rdev, rdev->mode_info.crtcs[0], &wm0_high, false);
	FUNC7(rdev, rdev->mode_info.crtcs[1], &wm1_high, false);

	FUNC7(rdev, rdev->mode_info.crtcs[0], &wm0_low, true);
	FUNC7(rdev, rdev->mode_info.crtcs[1], &wm1_low, true);

	tmp = (wm0_high.lb_request_fifo_depth - 1);
	tmp |= (wm1_high.lb_request_fifo_depth - 1) << 16;
	FUNC3(R_006D58_LB_MAX_REQ_OUTSTANDING, tmp);

	FUNC6(rdev,
				    &wm0_high, &wm1_high,
				    mode0, mode1,
				    &d1mode_priority_a_cnt, &d2mode_priority_a_cnt);
	FUNC6(rdev,
				    &wm0_low, &wm1_low,
				    mode0, mode1,
				    &d1mode_priority_b_cnt, &d2mode_priority_b_cnt);

	FUNC3(R_006548_D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
	FUNC3(R_00654C_D1MODE_PRIORITY_B_CNT, d1mode_priority_b_cnt);
	FUNC3(R_006D48_D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
	FUNC3(R_006D4C_D2MODE_PRIORITY_B_CNT, d2mode_priority_b_cnt);
}