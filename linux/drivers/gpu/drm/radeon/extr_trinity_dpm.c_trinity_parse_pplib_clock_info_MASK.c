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
struct TYPE_2__ {int ucEngineClockHigh; int /*<<< orphan*/  vddcIndex; int /*<<< orphan*/  usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ sumo; } ;
typedef  int u32 ;
struct trinity_ps {int num_levels; struct trinity_pl* levels; } ;
struct trinity_power_info {scalar_t__ enable_sclk_ds; } ;
struct trinity_pl {int sclk; int ds_divider_index; int ss_divider_index; int /*<<< orphan*/  vddc_index; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct trinity_power_info* FUNC1 (struct radeon_device*) ; 
 struct trinity_ps* FUNC2 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
					   struct radeon_ps *rps, int index,
					   union pplib_clock_info *clock_info)
{
	struct trinity_power_info *pi = FUNC1(rdev);
	struct trinity_ps *ps = FUNC2(rps);
	struct trinity_pl *pl = &ps->levels[index];
	u32 sclk;

	sclk = FUNC0(clock_info->sumo.usEngineClockLow);
	sclk |= clock_info->sumo.ucEngineClockHigh << 16;
	pl->sclk = sclk;
	pl->vddc_index = clock_info->sumo.vddcIndex;

	ps->num_levels = index + 1;

	if (pi->enable_sclk_ds) {
		pl->ds_divider_index = 5;
		pl->ss_divider_index = 5;
	}
}