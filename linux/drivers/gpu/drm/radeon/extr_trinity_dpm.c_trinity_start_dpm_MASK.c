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

/* Variables and functions */
 int /*<<< orphan*/  CG_CG_VOLTAGE_CNTL ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  GLOBAL_PWRMGT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SCLK_DPM_BOOT_STATE_MASK ; 
 int FUNC2 (int) ; 
 int SCLK_DPM_EN_MASK ; 
 int /*<<< orphan*/  SMU_SCLK_DPM_CNTL ; 
 int FUNC3 (int) ; 
 int VOLTAGE_CHG_EN_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	u32 value = FUNC0(SMU_SCLK_DPM_CNTL);

	value &= ~(SCLK_DPM_EN_MASK | SCLK_DPM_BOOT_STATE_MASK | VOLTAGE_CHG_EN_MASK);
	value |= FUNC2(1) | FUNC1(0) | FUNC3(1);
	FUNC5(SMU_SCLK_DPM_CNTL, value);

	FUNC4(GENERAL_PWRMGT, GLOBAL_PWRMGT_EN, ~GLOBAL_PWRMGT_EN);
	FUNC4(CG_CG_VOLTAGE_CNTL, 0, ~EN);

	FUNC6(rdev, true);
}