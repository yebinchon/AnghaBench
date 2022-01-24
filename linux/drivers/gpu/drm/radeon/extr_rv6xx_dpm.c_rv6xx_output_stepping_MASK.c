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
struct rv6xx_sclk_stepping {int post_divider; int vco_frequency; } ;
struct rv6xx_power_info {int spll_ref_div; int fb_div_scale; } ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;

/* Variables and functions */
 int R600_SPLLSTEPTIME_DFLT ; 
 int /*<<< orphan*/  R600_SPLLSTEPUNIT_DFLT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int,int) ; 
 struct rv6xx_power_info* FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct radeon_device *rdev,
				  u32 step_index, struct rv6xx_sclk_stepping *step)
{
	struct rv6xx_power_info *pi = FUNC7(rdev);
	u32 ref_clk = rdev->clock.spll.reference_freq;
	u32 fb_divider;
	u32 spll_step_count = FUNC8(rdev,
							   R600_SPLLSTEPTIME_DFLT *
							   pi->spll_ref_div,
							   R600_SPLLSTEPUNIT_DFLT);

	FUNC0(rdev, step_index, true);
	FUNC2(rdev, step_index, false);

	if (step->post_divider == 1)
		FUNC1(rdev, step_index, false);
	else {
		u32 lo_len = (step->post_divider - 2) / 2;
		u32 hi_len = step->post_divider - 2 - lo_len;

		FUNC1(rdev, step_index, true);
		FUNC4(rdev, step_index, (hi_len << 4) | lo_len);
	}

	fb_divider = ((step->vco_frequency * pi->spll_ref_div) / ref_clk) >>
		pi->fb_div_scale;

	FUNC5(rdev, step_index,
						      pi->spll_ref_div - 1);
	FUNC3(rdev, step_index, fb_divider);
	FUNC6(rdev, step_index, spll_step_count);

}