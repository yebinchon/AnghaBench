#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int new_active_crtc_count; int new_active_crtcs; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {int num_crtc; TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_DISPLAY_GAP_CNTL ; 
 int FUNC0 (int) ; 
 int DCCG_DISP1_SLOW_SELECT_MASK ; 
 int DCCG_DISP1_SLOW_SELECT_SHIFT ; 
 int /*<<< orphan*/  DCCG_DISP_SLOW_SELECT_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DISP1_GAP_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DISP2_GAP_MASK ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_IGNORE ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_VBLANK_OR_WM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u32 tmp, pipe;
	int i;

	tmp = FUNC3(CG_DISPLAY_GAP_CNTL) & ~(DISP1_GAP_MASK | DISP2_GAP_MASK);
	if (rdev->pm.dpm.new_active_crtc_count > 0)
		tmp |= FUNC1(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
	else
		tmp |= FUNC1(R600_PM_DISPLAY_GAP_IGNORE);

	if (rdev->pm.dpm.new_active_crtc_count > 1)
		tmp |= FUNC2(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
	else
		tmp |= FUNC2(R600_PM_DISPLAY_GAP_IGNORE);

	FUNC4(CG_DISPLAY_GAP_CNTL, tmp);

	tmp = FUNC3(DCCG_DISP_SLOW_SELECT_REG);
	pipe = (tmp & DCCG_DISP1_SLOW_SELECT_MASK) >> DCCG_DISP1_SLOW_SELECT_SHIFT;

	if ((rdev->pm.dpm.new_active_crtc_count > 0) &&
	    (!(rdev->pm.dpm.new_active_crtcs & (1 << pipe)))) {
		/* find the first active crtc */
		for (i = 0; i < rdev->num_crtc; i++) {
			if (rdev->pm.dpm.new_active_crtcs & (1 << i))
				break;
		}
		if (i == rdev->num_crtc)
			pipe = 0;
		else
			pipe = i;

		tmp &= ~DCCG_DISP1_SLOW_SELECT_MASK;
		tmp |= FUNC0(pipe);
		FUNC4(DCCG_DISP_SLOW_SELECT_REG, tmp);
	}

	/* Setting this to false forces the performance state to low if the crtcs are disabled.
	 * This can be a problem on PowerXpress systems or if you want to use the card
	 * for offscreen rendering or compute if there are no crtcs enabled.
	 */
	FUNC5(rdev, rdev->pm.dpm.new_active_crtc_count > 0);
}