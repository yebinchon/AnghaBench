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
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK ; 
 int RLC_GPM_STAT__GFX_POWER_STATUS_MASK ; 
 int /*<<< orphan*/  RLC_SAFE_MODE ; 
 int RLC_SAFE_MODE__CMD_MASK ; 
 int RLC_SAFE_MODE__MESSAGE_MASK ; 
 int RLC_SAFE_MODE__MESSAGE__SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_CNTL ; 
 int /*<<< orphan*/  mmRLC_GPM_STAT ; 
 int /*<<< orphan*/  mmRLC_SAFE_MODE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint32_t data;
	unsigned i;
	data = FUNC1(mmRLC_CNTL);
	data |= RLC_SAFE_MODE__CMD_MASK;
	data &= ~RLC_SAFE_MODE__MESSAGE_MASK;
	data |= (1 << RLC_SAFE_MODE__MESSAGE__SHIFT);
	FUNC2(mmRLC_SAFE_MODE, data);

	/* wait for RLC_SAFE_MODE */
	for (i = 0; i < adev->usec_timeout; i++) {
		if ((FUNC1(mmRLC_GPM_STAT) &
		     (RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK |
		      RLC_GPM_STAT__GFX_POWER_STATUS_MASK)) ==
		    (RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK |
		     RLC_GPM_STAT__GFX_POWER_STATUS_MASK))
			break;
		FUNC3(1);
	}
	for (i = 0; i < adev->usec_timeout; i++) {
		if (!FUNC0(FUNC1(mmRLC_SAFE_MODE), RLC_SAFE_MODE, CMD))
			break;
		FUNC3(1);
	}
}