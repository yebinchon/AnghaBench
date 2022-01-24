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
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000E50_SRBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct radeon_device *rdev)
{
	unsigned i;
	u32 tmp;

	for (i = 0; i < rdev->usec_timeout; i++) {
		/* read MC_STATUS */
		tmp = FUNC0(R_000E50_SRBM_STATUS) & 0x3F00;
		if (!tmp)
			return 0;
		FUNC1(1);
	}
	return -1;
}