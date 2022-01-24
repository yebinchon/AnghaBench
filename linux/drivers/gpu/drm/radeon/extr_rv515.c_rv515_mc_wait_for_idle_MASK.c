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
typedef  int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_STATUS ; 
 int MC_STATUS_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct radeon_device *rdev)
{
	unsigned i;
	uint32_t tmp;

	for (i = 0; i < rdev->usec_timeout; i++) {
		/* read MC_STATUS */
		tmp = FUNC0(MC_STATUS);
		if (tmp & MC_STATUS_IDLE) {
			return 0;
		}
		FUNC1(1);
	}
	return -1;
}