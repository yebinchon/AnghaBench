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
struct sumo_power_info {scalar_t__ driver_nbps_policy_disable; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_3 ; 
 int GNB_SLOW_FSTATE_0_MASK ; 
 int GNB_SLOW_FSTATE_0_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev, u32 index, u32 gnb_slow)
{
	struct sumo_power_info *pi = FUNC2(rdev);
	u32 temp = gnb_slow;
	u32 cg_sclk_dpm_ctrl_3;

	if (pi->driver_nbps_policy_disable)
		temp = 1;

	cg_sclk_dpm_ctrl_3 = FUNC0(CG_SCLK_DPM_CTRL_3);
	cg_sclk_dpm_ctrl_3 &= ~(GNB_SLOW_FSTATE_0_MASK << index);
	cg_sclk_dpm_ctrl_3 |= (temp << (GNB_SLOW_FSTATE_0_SHIFT + index));

	FUNC1(CG_SCLK_DPM_CTRL_3, cg_sclk_dpm_ctrl_3);
}