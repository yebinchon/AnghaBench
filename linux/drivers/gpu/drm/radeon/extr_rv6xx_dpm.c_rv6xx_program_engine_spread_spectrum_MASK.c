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
struct rv6xx_power_info {int /*<<< orphan*/  fb_div_scale; scalar_t__ sclk_ss; } ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;
struct radeon_atom_ss {int /*<<< orphan*/  rate; int /*<<< orphan*/  percentage; } ;
struct atom_clock_dividers {int ref_div; } ;
typedef  enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_ENGINE_SS ; 
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,struct radeon_atom_ss*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct atom_clock_dividers*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int) ; 
 struct rv6xx_power_info* FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int,int) ; 

__attribute__((used)) static void FUNC9(struct radeon_device *rdev,
						 u32 clock, enum r600_power_level level)
{
	u32 ref_clk = rdev->clock.spll.reference_freq;
	struct rv6xx_power_info *pi = FUNC6(rdev);
	struct atom_clock_dividers dividers;
	struct radeon_atom_ss ss;
	u32 vco_freq, clk_v, clk_s;

	FUNC5(rdev, level, false);

	if (clock && pi->sclk_ss) {
		if (FUNC0(rdev, COMPUTE_ENGINE_PLL_PARAM, clock, false, &dividers) == 0) {
			vco_freq = FUNC4(ref_clk, &dividers,
								 pi->fb_div_scale);

			if (FUNC1(rdev, &ss,
							     ASIC_INTERNAL_ENGINE_SS, vco_freq)) {
				clk_v = FUNC3(vco_freq,
									      (ref_clk / (dividers.ref_div + 1)),
									      ss.rate,
									      ss.percentage,
									      pi->fb_div_scale);

				clk_s = FUNC2(ss.rate,
									      (ref_clk / (dividers.ref_div + 1)));

				FUNC8(rdev, level, clk_v);
				FUNC7(rdev, level, clk_s);
				FUNC5(rdev, level, true);
			}
		}
	}
}