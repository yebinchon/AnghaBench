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
struct radeon_device {int usec_timeout; } ;
struct ci_power_info {int /*<<< orphan*/  sram_end; } ;

/* Variables and functions */
 int BOOT_SEQ_DONE ; 
 int /*<<< orphan*/  RCU_UC_EVENTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_SYSCON_MISC_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ci_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC2(rdev);
	int i, ret;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(RCU_UC_EVENTS) & BOOT_SEQ_DONE)
			break;
	}
	FUNC1(SMC_SYSCON_MISC_CNTL, 1);

	FUNC5(rdev);
	FUNC4(rdev);

	ret = FUNC3(rdev, pi->sram_end);

	return ret;

}