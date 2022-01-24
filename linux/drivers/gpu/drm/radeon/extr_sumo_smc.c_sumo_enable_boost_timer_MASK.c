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
typedef  int u32 ;
struct TYPE_2__ {int sclk_dpm_boost_margin; int sclk_dpm_throttle_margin; int gnb_tdp_limit; int sclk_dpm_tdp_limit_pg; } ;
struct sumo_power_info {TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNB_TDP_LIMIT ; 
 int LCLK_SCALING_TIMER_PRESCALER_MASK ; 
 int LCLK_SCALING_TIMER_PRESCALER_SHIFT ; 
 int /*<<< orphan*/  RCU_BOOST_MARGIN ; 
 int /*<<< orphan*/  RCU_GNB_PWR_REP_TIMER_CNTL ; 
 int /*<<< orphan*/  RCU_LCLK_SCALING_CNTL ; 
 int /*<<< orphan*/  RCU_SclkDpmTdpLimitPG ; 
 int /*<<< orphan*/  RCU_THROTTLE_MARGIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 
 struct sumo_power_info* FUNC3 (struct radeon_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC6(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC3(rdev);
	u32 period, unit, timer_value;
	u32 xclk = FUNC2(rdev);

	unit = (FUNC0(RCU_LCLK_SCALING_CNTL) & LCLK_SCALING_TIMER_PRESCALER_MASK)
		>> LCLK_SCALING_TIMER_PRESCALER_SHIFT;

	period = 100 * (xclk / 100 / FUNC4(unit));

	timer_value = (period << 16) | (unit << 4);

	FUNC1(RCU_GNB_PWR_REP_TIMER_CNTL, timer_value);
	FUNC1(RCU_BOOST_MARGIN, pi->sys_info.sclk_dpm_boost_margin);
	FUNC1(RCU_THROTTLE_MARGIN, pi->sys_info.sclk_dpm_throttle_margin);
	FUNC1(GNB_TDP_LIMIT, pi->sys_info.gnb_tdp_limit);
	FUNC1(RCU_SclkDpmTdpLimitPG, pi->sys_info.sclk_dpm_tdp_limit_pg);

	FUNC5(rdev, SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20);
}