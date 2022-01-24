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
 int /*<<< orphan*/  FIRMWARE_FLAGS ; 
 int INTERRUPTS_ENABLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	int i;

	FUNC1(rdev);
	FUNC3(rdev);
	FUNC2(rdev);
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(FIRMWARE_FLAGS) & INTERRUPTS_ENABLED)
			break;
	}
}