#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int /*<<< orphan*/  SclkFrequency; } ;

/* Variables and functions */
 size_t CURR_SCLK_INDEX_MASK ; 
 size_t CURR_SCLK_INDEX_SHIFT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SMU__NUM_SCLK_DPM_STATE ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC2 (struct radeon_device*) ; 

u32 FUNC3(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC2(rdev);
	u32 current_index =
		(FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURR_SCLK_INDEX_MASK) >>
		CURR_SCLK_INDEX_SHIFT;
	u32 sclk;

	if (current_index >= SMU__NUM_SCLK_DPM_STATE) {
		return 0;
	} else {
		sclk = FUNC1(pi->graphics_level[current_index].SclkFrequency);
		return sclk;
	}
}