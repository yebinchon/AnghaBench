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
struct radeon_device {scalar_t__ usec_timeout; } ;

/* Variables and functions */
 scalar_t__ GFX_CLOCK_STATUS ; 
 scalar_t__ GFX_POWER_STATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_ENTER_RLC_SAFE_MODE ; 
 scalar_t__ REQ ; 
 int /*<<< orphan*/  RLC_GPM_STAT ; 
 int /*<<< orphan*/  RLC_GPR_REG2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct radeon_device *rdev)
{
	u32 tmp, i, mask;

	tmp = REQ | FUNC0(MSG_ENTER_RLC_SAFE_MODE);
	FUNC2(RLC_GPR_REG2, tmp);

	mask = GFX_POWER_STATUS | GFX_CLOCK_STATUS;
	for (i = 0; i < rdev->usec_timeout; i++) {
		if ((FUNC1(RLC_GPM_STAT) & mask) == mask)
			break;
		FUNC3(1);
	}

	for (i = 0; i < rdev->usec_timeout; i++) {
		if ((FUNC1(RLC_GPR_REG2) & REQ) == 0)
			break;
		FUNC3(1);
	}
}