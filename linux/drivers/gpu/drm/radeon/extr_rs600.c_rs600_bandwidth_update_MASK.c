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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {TYPE_2__** crtcs; int /*<<< orphan*/  mode_config_initialized; } ;
struct radeon_device {int disp_priority; TYPE_3__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_006548_D1MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_00654C_D1MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  R_006D48_D2MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_006D4C_D2MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ; 

void FUNC6(struct radeon_device *rdev)
{
	struct drm_display_mode *mode0 = NULL;
	struct drm_display_mode *mode1 = NULL;
	u32 d1mode_priority_a_cnt, d2mode_priority_a_cnt;
	/* FIXME: implement full support */

	if (!rdev->mode_info.mode_config_initialized)
		return;

	FUNC4(rdev);

	if (rdev->mode_info.crtcs[0]->base.enabled)
		mode0 = &rdev->mode_info.crtcs[0]->base.mode;
	if (rdev->mode_info.crtcs[1]->base.enabled)
		mode1 = &rdev->mode_info.crtcs[1]->base.mode;

	FUNC5(rdev, mode0, mode1);

	if (rdev->disp_priority == 2) {
		d1mode_priority_a_cnt = FUNC0(R_006548_D1MODE_PRIORITY_A_CNT);
		d2mode_priority_a_cnt = FUNC0(R_006D48_D2MODE_PRIORITY_A_CNT);
		d1mode_priority_a_cnt |= FUNC1(1);
		d2mode_priority_a_cnt |= FUNC2(1);
		FUNC3(R_006548_D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
		FUNC3(R_00654C_D1MODE_PRIORITY_B_CNT, d1mode_priority_a_cnt);
		FUNC3(R_006D48_D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
		FUNC3(R_006D4C_D2MODE_PRIORITY_B_CNT, d2mode_priority_a_cnt);
	}
}