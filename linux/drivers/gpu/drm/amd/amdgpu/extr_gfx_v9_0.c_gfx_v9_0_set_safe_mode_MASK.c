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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLC_SAFE_MODE ; 
 int RLC_SAFE_MODE__CMD_MASK ; 
 int RLC_SAFE_MODE__MESSAGE__SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_SAFE_MODE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint32_t data;
	unsigned i;

	data = RLC_SAFE_MODE__CMD_MASK;
	data |= (1 << RLC_SAFE_MODE__MESSAGE__SHIFT);
	FUNC2(GC, 0, mmRLC_SAFE_MODE, data);

	/* wait for RLC_SAFE_MODE */
	for (i = 0; i < adev->usec_timeout; i++) {
		if (!FUNC0(FUNC1(GC, 0, mmRLC_SAFE_MODE), RLC_SAFE_MODE, CMD))
			break;
		FUNC3(1);
	}
}