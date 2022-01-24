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
 int /*<<< orphan*/  FIR_FORCE_TREND_SEL ; 
 int /*<<< orphan*/  FIR_TREND_MODE ; 
 int R600_TD_AUTO ; 
 int R600_TD_DOWN ; 
 int R600_TD_UP ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct radeon_device *rdev,
		    enum r600_td td)
{
	if (td == R600_TD_AUTO)
		FUNC0(SCLK_PWRMGT_CNTL, 0, ~FIR_FORCE_TREND_SEL);
	else
		FUNC0(SCLK_PWRMGT_CNTL, FIR_FORCE_TREND_SEL, ~FIR_FORCE_TREND_SEL);
	if (td == R600_TD_UP)
		FUNC0(SCLK_PWRMGT_CNTL, 0, ~FIR_TREND_MODE);
	if (td == R600_TD_DOWN)
		FUNC0(SCLK_PWRMGT_CNTL, FIR_TREND_MODE, ~FIR_TREND_MODE);
}