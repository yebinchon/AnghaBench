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
typedef  scalar_t__ uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AUTO_CTXSW_ENABLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SDMA0_CNTL ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	uint32_t reg_offset, value;
	int i;

	for (i = 0; i < 2; i++) {
		if (i == 0)
			reg_offset = SDMA0_REGISTER_OFFSET;
		else
			reg_offset = SDMA1_REGISTER_OFFSET;
		value = FUNC0(SDMA0_CNTL + reg_offset);
		if (enable)
			value |= AUTO_CTXSW_ENABLE;
		else
			value &= ~AUTO_CTXSW_ENABLE;
		FUNC1(SDMA0_CNTL + reg_offset, value);
	}
}