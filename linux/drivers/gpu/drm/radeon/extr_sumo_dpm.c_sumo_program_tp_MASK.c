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
struct radeon_device {int dummy; } ;
typedef  enum r600_td { ____Placeholder_r600_td } r600_td ;

/* Variables and functions */
 scalar_t__ CG_FFCT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTC_0_MASK ; 
 int /*<<< orphan*/  FIR_FORCE_TREND_SEL ; 
 int /*<<< orphan*/  FIR_TREND_MODE ; 
 int R600_TD_AUTO ; 
 int R600_TD_DFLT ; 
 int R600_TD_DOWN ; 
 int R600_TD_UP ; 
 scalar_t__ SCLK_PWRMGT_CNTL ; 
 int SUMO_PM_NUMBER_OF_TC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTC_0_MASK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sumo_dtc ; 
 int /*<<< orphan*/ * sumo_utc ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	int i;
	enum r600_td td = R600_TD_DFLT;

	for (i = 0; i < SUMO_PM_NUMBER_OF_TC; i++) {
		FUNC2(CG_FFCT_0 + (i * 4), FUNC1(sumo_utc[i]), ~UTC_0_MASK);
		FUNC2(CG_FFCT_0 + (i * 4), FUNC0(sumo_dtc[i]), ~DTC_0_MASK);
	}

	if (td == R600_TD_AUTO)
		FUNC2(SCLK_PWRMGT_CNTL, 0, ~FIR_FORCE_TREND_SEL);
	else
		FUNC2(SCLK_PWRMGT_CNTL, FIR_FORCE_TREND_SEL, ~FIR_FORCE_TREND_SEL);

	if (td == R600_TD_UP)
		FUNC2(SCLK_PWRMGT_CNTL, 0, ~FIR_TREND_MODE);

	if (td == R600_TD_DOWN)
		FUNC2(SCLK_PWRMGT_CNTL, FIR_TREND_MODE, ~FIR_TREND_MODE);
}