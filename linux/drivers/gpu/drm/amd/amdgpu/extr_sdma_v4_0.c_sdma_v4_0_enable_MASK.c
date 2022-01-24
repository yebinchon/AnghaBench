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
struct TYPE_2__ {int num_instances; scalar_t__ has_page_queue; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0_F32_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_F32_CNTL ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev, bool enable)
{
	u32 f32_cntl;
	int i;

	if (enable == false) {
		FUNC3(adev);
		FUNC5(adev);
		if (adev->sdma.has_page_queue)
			FUNC4(adev);
	}

	for (i = 0; i < adev->sdma.num_instances; i++) {
		f32_cntl = FUNC1(i, mmSDMA0_F32_CNTL);
		f32_cntl = FUNC0(f32_cntl, SDMA0_F32_CNTL, HALT, enable ? 0 : 1);
		FUNC2(i, mmSDMA0_F32_CNTL, f32_cntl);
	}
}