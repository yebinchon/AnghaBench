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
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  GLOBAL_PWRMGT_EN ; 
 int /*<<< orphan*/  MPLL_PWRMGT_OFF ; 
 int /*<<< orphan*/  PPSMC_MSG_TwoLevelsDisabled ; 
 scalar_t__ PPSMC_Result_OK ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  SCLK_PWRMGT_OFF ; 
 int /*<<< orphan*/  TCI_MCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev)
{
	PPSMC_Result result;

	result = FUNC2(rdev, PPSMC_MSG_TwoLevelsDisabled);

	if (result != PPSMC_Result_OK)
		FUNC0("Could not force DPM to low\n");

	FUNC1(GENERAL_PWRMGT, 0, ~GLOBAL_PWRMGT_EN);

	FUNC1(SCLK_PWRMGT_CNTL, SCLK_PWRMGT_OFF, ~SCLK_PWRMGT_OFF);

	FUNC1(TCI_MCLK_PWRMGT_CNTL, MPLL_PWRMGT_OFF, ~MPLL_PWRMGT_OFF);
}