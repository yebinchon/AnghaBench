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
struct sumo_power_info {scalar_t__ enable_sclk_ds; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
				 u32 index, u32 divider)
{
	struct sumo_power_info *pi = FUNC2(rdev);

	if (pi->enable_sclk_ds) {
		u32 dpm_ctrl = FUNC0(CG_SCLK_DPM_CTRL_6);

		dpm_ctrl &= ~(0x7 << (index * 3));
		dpm_ctrl |= (divider << (index * 3));
		FUNC1(CG_SCLK_DPM_CTRL_6, dpm_ctrl);
	}
}