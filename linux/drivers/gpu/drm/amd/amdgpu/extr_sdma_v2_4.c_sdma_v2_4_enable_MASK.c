#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDMA0_F32_CNTL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mmSDMA0_F32_CNTL ; 
 scalar_t__* sdma_offsets ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev, bool enable)
{
	u32 f32_cntl;
	int i;

	if (!enable) {
		FUNC3(adev);
		FUNC4(adev);
	}

	for (i = 0; i < adev->sdma.num_instances; i++) {
		f32_cntl = FUNC1(mmSDMA0_F32_CNTL + sdma_offsets[i]);
		if (enable)
			f32_cntl = FUNC0(f32_cntl, SDMA0_F32_CNTL, HALT, 0);
		else
			f32_cntl = FUNC0(f32_cntl, SDMA0_F32_CNTL, HALT, 1);
		FUNC2(mmSDMA0_F32_CNTL + sdma_offsets[i], f32_cntl);
	}
}