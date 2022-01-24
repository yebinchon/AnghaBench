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
struct sumo_power_info {scalar_t__ enable_boost; } ;
struct sumo_pl {scalar_t__ ss_divider_index; scalar_t__ ds_divider_index; int /*<<< orphan*/  sclk_dpm_tdp_limit; int /*<<< orphan*/  allow_gnb_slow; int /*<<< orphan*/  vddc_index; int /*<<< orphan*/  sclk; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  DEEP_SLEEP_CNTL ; 
 int ENABLE_DS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 
 struct sumo_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct radeon_device *rdev,
				     struct sumo_pl *pl, u32 index)
{
	struct sumo_power_info *pi = FUNC3(rdev);
	int ret;
	struct atom_clock_dividers dividers;
	u32 ds_en = FUNC0(DEEP_SLEEP_CNTL) & ENABLE_DS;

	ret = FUNC2(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     pl->sclk, false, &dividers);
	if (ret)
		return;

	FUNC5(rdev, index, dividers.post_div);

	FUNC9(rdev, index, pl->vddc_index);

	if (pl->ss_divider_index == 0 || pl->ds_divider_index == 0) {
		if (ds_en)
			FUNC1(DEEP_SLEEP_CNTL, 0, ~ENABLE_DS);
	} else {
		FUNC7(rdev, index, pl->ss_divider_index);
		FUNC6(rdev, index, pl->ds_divider_index);

		if (!ds_en)
			FUNC1(DEEP_SLEEP_CNTL, ENABLE_DS, ~ENABLE_DS);
	}

	FUNC4(rdev, index, pl->allow_gnb_slow);

	if (pi->enable_boost)
		FUNC8(rdev, index, pl->sclk_dpm_tdp_limit);
}