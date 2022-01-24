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
typedef  scalar_t__ u32 ;
struct rv6xx_power_info {int /*<<< orphan*/  fb_div_scale; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_MEMORY_PLL_PARAM ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__,int,struct atom_clock_dividers*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct atom_clock_dividers*,int /*<<< orphan*/ ) ; 
 struct rv6xx_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
						     u32 requested_memory_clock,
						     u32 ref_clk,
						     struct atom_clock_dividers *dividers,
						     u32 *vco_freq)
{
	struct rv6xx_power_info *pi = FUNC2(rdev);
	struct atom_clock_dividers req_dividers;
	u32 vco_freq_temp;

	if (FUNC0(rdev, COMPUTE_MEMORY_PLL_PARAM,
					   requested_memory_clock, false, &req_dividers) == 0) {
		vco_freq_temp = FUNC1(ref_clk, &req_dividers,
							      pi->fb_div_scale);

		if (vco_freq_temp > *vco_freq) {
			*dividers = req_dividers;
			*vco_freq = vco_freq_temp;
		}
	}
}