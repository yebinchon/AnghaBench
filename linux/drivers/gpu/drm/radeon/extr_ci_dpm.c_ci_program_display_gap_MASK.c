#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int new_active_crtc_count; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_5__ {int reference_freq; } ;
struct TYPE_6__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_4__ pm; TYPE_2__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_DISPLAY_GAP_CNTL ; 
 int /*<<< orphan*/  CG_DISPLAY_GAP_CNTL2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DISP_GAP_MASK ; 
 int /*<<< orphan*/  PreVBlankGap ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_IGNORE ; 
 int /*<<< orphan*/  R600_PM_DISPLAY_GAP_VBLANK_OR_WM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMU7_SoftRegisters ; 
 int /*<<< orphan*/  VBlankTimeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev)
{
	u32 tmp = FUNC1(CG_DISPLAY_GAP_CNTL);
	u32 pre_vbi_time_in_us;
	u32 frame_time_in_us;
	u32 ref_clock = rdev->clock.spll.reference_freq;
	u32 refresh_rate = FUNC7(rdev);
	u32 vblank_time = FUNC6(rdev);

	tmp &= ~DISP_GAP_MASK;
	if (rdev->pm.dpm.new_active_crtc_count > 0)
		tmp |= FUNC0(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
	else
		tmp |= FUNC0(R600_PM_DISPLAY_GAP_IGNORE);
	FUNC2(CG_DISPLAY_GAP_CNTL, tmp);

	if (refresh_rate == 0)
		refresh_rate = 60;
	if (vblank_time == 0xffffffff)
		vblank_time = 500;
	frame_time_in_us = 1000000 / refresh_rate;
	pre_vbi_time_in_us =
		frame_time_in_us - 200 - vblank_time;
	tmp = pre_vbi_time_in_us * (ref_clock / 100);

	FUNC2(CG_DISPLAY_GAP_CNTL2, tmp);
	FUNC4(rdev, FUNC5(SMU7_SoftRegisters, PreVBlankGap), 0x64);
	FUNC4(rdev, FUNC5(SMU7_SoftRegisters, VBlankTimeout), (frame_time_in_us - pre_vbi_time_in_us));


	FUNC3(rdev, (rdev->pm.dpm.new_active_crtc_count == 1));

}