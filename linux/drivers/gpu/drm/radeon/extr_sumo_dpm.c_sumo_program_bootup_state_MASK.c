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
struct sumo_power_info {int /*<<< orphan*/  boot_pl; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC2(rdev);
	u32 dpm_ctrl4 = FUNC0(CG_SCLK_DPM_CTRL_4);
	u32 i;

	FUNC4(rdev, &pi->boot_pl, 0);

	dpm_ctrl4 &= 0xFFFFFF00;
	FUNC1(CG_SCLK_DPM_CTRL_4, dpm_ctrl4);

	for (i = 1; i < 8; i++)
		FUNC3(rdev, i, false);
}