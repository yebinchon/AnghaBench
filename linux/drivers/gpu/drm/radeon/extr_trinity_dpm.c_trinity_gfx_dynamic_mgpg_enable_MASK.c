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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DS_PG_CNTL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DS_PG_EN_MASK ; 
 int /*<<< orphan*/  PM_I_CNTL_1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMU_S_PG_CNTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
					    bool enable)
{
	u32 value;

	if (enable) {
		value = FUNC2(PM_I_CNTL_1);
		value &= ~DS_PG_CNTL_MASK;
		value |= FUNC0(1);
		FUNC3(PM_I_CNTL_1, value);

		value = FUNC2(SMU_S_PG_CNTL);
		value &= ~DS_PG_EN_MASK;
		value |= FUNC1(1);
		FUNC3(SMU_S_PG_CNTL, value);
	} else {
		value = FUNC2(SMU_S_PG_CNTL);
		value &= ~DS_PG_EN_MASK;
		FUNC3(SMU_S_PG_CNTL, value);

		value = FUNC2(PM_I_CNTL_1);
		value &= ~DS_PG_CNTL_MASK;
		FUNC3(PM_I_CNTL_1, value);
	}

	FUNC4(rdev);

}