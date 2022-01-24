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
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 int RLC_CNTL__RLC_ENABLE_F32_MASK ; 
 int RLC_GPM_STAT__RLC_BUSY_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmRLC_CNTL ; 
 int /*<<< orphan*/  mmRLC_GPM_STAT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(struct amdgpu_device *adev)
{
	u32 data, orig;

	orig = data = FUNC0(mmRLC_CNTL);

	if (data & RLC_CNTL__RLC_ENABLE_F32_MASK) {
		u32 i;

		data &= ~RLC_CNTL__RLC_ENABLE_F32_MASK;
		FUNC1(mmRLC_CNTL, data);

		for (i = 0; i < adev->usec_timeout; i++) {
			if ((FUNC0(mmRLC_GPM_STAT) & RLC_GPM_STAT__RLC_BUSY_MASK) == 0)
				break;
			FUNC3(1);
		}

		FUNC2(adev);
	}

	return orig;
}