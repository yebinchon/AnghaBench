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
typedef  scalar_t__ u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SDMA0_ME_CNTL ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 scalar_t__ SDMA_HALT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

void FUNC5(struct radeon_device *rdev, bool enable)
{
	u32 me_cntl, reg_offset;
	int i;

	if (enable == false) {
		FUNC3(rdev);
		FUNC4(rdev);
	}

	for (i = 0; i < 2; i++) {
		if (i == 0)
			reg_offset = SDMA0_REGISTER_OFFSET;
		else
			reg_offset = SDMA1_REGISTER_OFFSET;
		me_cntl = FUNC0(SDMA0_ME_CNTL + reg_offset);
		if (enable)
			me_cntl &= ~SDMA_HALT;
		else
			me_cntl |= SDMA_HALT;
		FUNC1(SDMA0_ME_CNTL + reg_offset, me_cntl);
	}

	FUNC2(rdev, enable);
}