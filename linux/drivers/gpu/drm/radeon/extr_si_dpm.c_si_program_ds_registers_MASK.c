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
struct evergreen_power_info {scalar_t__ sclk_deep_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOSCALE_ON_SS_CLEAR ; 
 int /*<<< orphan*/  CG_SPLL_AUTOSCALE_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEEP_SLEEP_CLK_SEL_MASK ; 
 int /*<<< orphan*/  MISC_CLK_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evergreen_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC2(rdev);
	u32 tmp = 1; /* XXX: 0x10 on tahiti A0 */

	if (eg_pi->sclk_deep_sleep) {
		FUNC1(MISC_CLK_CNTL, FUNC0(tmp), ~DEEP_SLEEP_CLK_SEL_MASK);
		FUNC1(CG_SPLL_AUTOSCALE_CNTL, AUTOSCALE_ON_SS_CLEAR,
			 ~AUTOSCALE_ON_SS_CLEAR);
	}
}