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
 int /*<<< orphan*/  LB_SYNC_RESET_SEL ; 
 int LB_SYNC_RESET_SEL_MASK ; 
 int LB_SYNC_RESET_SEL_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (((FUNC0(LB_SYNC_RESET_SEL) & LB_SYNC_RESET_SEL_MASK) >> LB_SYNC_RESET_SEL_SHIFT) != 1)
			break;
		FUNC2(1);
	}
	FUNC2(100);

	FUNC1(rdev);
}