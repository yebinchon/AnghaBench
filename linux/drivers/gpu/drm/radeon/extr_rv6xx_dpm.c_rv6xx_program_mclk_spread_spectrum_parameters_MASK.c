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
struct TYPE_6__ {size_t high_mclk_index; size_t medium_mclk_index; size_t low_mclk_index; int /*<<< orphan*/ * mclks; } ;
struct rv6xx_power_info {int /*<<< orphan*/  fb_div_scale; TYPE_3__ hw; scalar_t__ mclk_ss; } ;
struct TYPE_4__ {int reference_freq; } ;
struct TYPE_5__ {TYPE_1__ mpll; } ;
struct radeon_device {TYPE_2__ clock; } ;
struct radeon_atom_ss {int /*<<< orphan*/  rate; int /*<<< orphan*/  percentage; } ;
struct atom_clock_dividers {int ref_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_MEMORY_SS ; 
 scalar_t__ FUNC0 (struct radeon_device*,struct radeon_atom_ss*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int,struct atom_clock_dividers*,int*) ; 
 struct rv6xx_power_info* FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC5(rdev);
	u32 ref_clk = rdev->clock.mpll.reference_freq;
	struct atom_clock_dividers dividers;
	struct radeon_atom_ss ss;
	u32 vco_freq = 0, clk_v, clk_s;

	FUNC3(rdev, false);

	if (pi->mclk_ss) {
		FUNC4(rdev,
							 pi->hw.mclks[pi->hw.high_mclk_index],
							 ref_clk,
							 &dividers,
							 &vco_freq);

		FUNC4(rdev,
							 pi->hw.mclks[pi->hw.medium_mclk_index],
							 ref_clk,
							 &dividers,
							 &vco_freq);

		FUNC4(rdev,
							 pi->hw.mclks[pi->hw.low_mclk_index],
							 ref_clk,
							 &dividers,
							 &vco_freq);

		if (vco_freq) {
			if (FUNC0(rdev, &ss,
							     ASIC_INTERNAL_MEMORY_SS, vco_freq)) {
				clk_v = FUNC2(vco_freq,
									     (ref_clk / (dividers.ref_div + 1)),
									     ss.rate,
									     ss.percentage,
									     pi->fb_div_scale);

				clk_s = FUNC1(ss.rate,
									     (ref_clk / (dividers.ref_div + 1)));

				FUNC7(rdev, clk_v);
				FUNC6(rdev, clk_s);
				FUNC3(rdev, true);
			}
		}
	}
}