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
typedef  size_t u32 ;
struct trinity_power_info {int /*<<< orphan*/ * at; } ;
struct trinity_pl {int /*<<< orphan*/  vce_wm; int /*<<< orphan*/  display_wm; int /*<<< orphan*/  force_nbp_state; int /*<<< orphan*/  allow_gnb_slow; int /*<<< orphan*/  ds_divider_index; int /*<<< orphan*/  ss_divider_index; int /*<<< orphan*/  vddc_index; int /*<<< orphan*/  sclk; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 size_t SUMO_MAX_HARDWARE_POWERLEVELS ; 
 struct trinity_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct radeon_device *rdev,
					struct trinity_pl *pl, u32 index)
{
	struct trinity_power_info *pi = FUNC0(rdev);

	if (index >= SUMO_MAX_HARDWARE_POWERLEVELS)
		return;

	FUNC4(rdev, index, pl->sclk);
	FUNC9(rdev, index, pl->vddc_index);
	FUNC7(rdev, index, pl->ss_divider_index);
	FUNC5(rdev, index, pl->ds_divider_index);
	FUNC1(rdev, index, pl->allow_gnb_slow);
	FUNC6(rdev, index, pl->force_nbp_state);
	FUNC3(rdev, index, pl->display_wm);
	FUNC8(rdev, index, pl->vce_wm);
	FUNC2(rdev, index, pi->at[index]);
}