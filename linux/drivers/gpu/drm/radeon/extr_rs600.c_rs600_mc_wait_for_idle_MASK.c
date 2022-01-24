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
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000000_MC_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct radeon_device *rdev)
{
	unsigned i;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(FUNC1(R_000000_MC_STATUS)))
			return 0;
		FUNC2(1);
	}
	return -1;
}