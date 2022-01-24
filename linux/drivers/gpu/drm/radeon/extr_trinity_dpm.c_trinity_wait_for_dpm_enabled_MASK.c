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

/* Variables and functions */
 int CURRENT_STATE_MASK ; 
 int DYNAMIC_PM_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 int TARGET_STATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(SCLK_PWRMGT_CNTL) & DYNAMIC_PM_EN)
			break;
		FUNC1(1);
	}
	for (i = 0; i < rdev->usec_timeout; i++) {
		if ((FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & TARGET_STATE_MASK) == 0)
			break;
		FUNC1(1);
	}
	for (i = 0; i < rdev->usec_timeout; i++) {
		if ((FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_STATE_MASK) == 0)
			break;
		FUNC1(1);
	}
}