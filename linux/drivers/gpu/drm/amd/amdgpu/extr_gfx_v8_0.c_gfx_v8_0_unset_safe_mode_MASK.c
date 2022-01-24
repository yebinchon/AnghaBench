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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLC_SAFE_MODE ; 
 int /*<<< orphan*/  RLC_SAFE_MODE__CMD_MASK ; 
 int /*<<< orphan*/  RLC_SAFE_MODE__MESSAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_CNTL ; 
 int /*<<< orphan*/  mmRLC_SAFE_MODE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint32_t data;
	unsigned i;

	data = FUNC1(mmRLC_CNTL);
	data |= RLC_SAFE_MODE__CMD_MASK;
	data &= ~RLC_SAFE_MODE__MESSAGE_MASK;
	FUNC2(mmRLC_SAFE_MODE, data);

	for (i = 0; i < adev->usec_timeout; i++) {
		if (!FUNC0(FUNC1(mmRLC_SAFE_MODE), RLC_SAFE_MODE, CMD))
			break;
		FUNC3(1);
	}
}