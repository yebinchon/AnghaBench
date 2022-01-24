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
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDMA0_STATUS_REG__IDLE_MASK ; 
 int /*<<< orphan*/  mmSDMA0_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	unsigned i;
	u32 sdma0, sdma1;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (i = 0; i < adev->usec_timeout; i++) {
		sdma0 = FUNC0(FUNC1(adev, 0, mmSDMA0_STATUS_REG));
		sdma1 = FUNC0(FUNC1(adev, 1, mmSDMA0_STATUS_REG));

		if (sdma0 & sdma1 & SDMA0_STATUS_REG__IDLE_MASK)
			return 0;
		FUNC2(1);
	}
	return -ETIMEDOUT;
}