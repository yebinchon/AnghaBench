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
typedef  int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_DIVIDER_MASK ; 
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PD_SCLK_DIVIDER_MASK ; 
 int FUNC2 (int) ; 
 int SMU_SCLK_DPM_STATE_0_CNTL_0 ; 
 int SMU_SCLK_DPM_STATE_0_PG_CNTL ; 
 int TRINITY_SIZEOF_DPM_STATE_TABLE ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
				      u32 index, u32 sclk)
{
	struct atom_clock_dividers  dividers;
	int ret;
	u32 value;
	u32 ix = index * TRINITY_SIZEOF_DPM_STATE_TABLE;

	ret = FUNC4(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     sclk, false, &dividers);
	if (ret)
		return;

	value = FUNC2(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix);
	value &= ~CLK_DIVIDER_MASK;
	value |= FUNC0(dividers.post_div);
	FUNC3(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix, value);

	ret = FUNC4(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     sclk/2, false, &dividers);
	if (ret)
		return;

	value = FUNC2(SMU_SCLK_DPM_STATE_0_PG_CNTL + ix);
	value &= ~PD_SCLK_DIVIDER_MASK;
	value |= FUNC1(dividers.post_div);
	FUNC3(SMU_SCLK_DPM_STATE_0_PG_CNTL + ix, value);
}