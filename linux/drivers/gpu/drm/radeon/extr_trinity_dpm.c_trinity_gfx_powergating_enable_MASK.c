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

/* Variables and functions */
 int /*<<< orphan*/  CC_SMU_TST_EFUSE1_MISC ; 
 int /*<<< orphan*/  DYN_PWR_DOWN_EN ; 
 int /*<<< orphan*/  GB_ADDR_CONFIG ; 
 int RB_BACKEND_DISABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  SMU_SCRATCH_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					   bool enable)
{
	if (enable) {
		if (FUNC1(CC_SMU_TST_EFUSE1_MISC) & RB_BACKEND_DISABLE_MASK)
			FUNC3(SMU_SCRATCH_A, (FUNC1(SMU_SCRATCH_A) | 0x01));

		FUNC2(SCLK_PWRMGT_CNTL, DYN_PWR_DOWN_EN, ~DYN_PWR_DOWN_EN);
	} else {
		FUNC2(SCLK_PWRMGT_CNTL, 0, ~DYN_PWR_DOWN_EN);
		FUNC0(GB_ADDR_CONFIG);
	}
}