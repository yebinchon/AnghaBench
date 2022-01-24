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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_SDMA_LS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_POWER_CNTL ; 

__attribute__((used)) static void FUNC2(
		struct amdgpu_device *adev,
		bool enable)
{
	uint32_t data, def;
	int i;

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_LS)) {
		for (i = 0; i < adev->sdma.num_instances; i++) {
			/* 1-not override: enable sdma mem light sleep */
			def = data = FUNC0(0, mmSDMA0_POWER_CNTL);
			data |= SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;
			if (def != data)
				FUNC1(0, mmSDMA0_POWER_CNTL, data);
		}
	} else {
		for (i = 0; i < adev->sdma.num_instances; i++) {
		/* 0-override:disable sdma mem light sleep */
			def = data = FUNC0(0, mmSDMA0_POWER_CNTL);
			data &= ~SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;
			if (def != data)
				FUNC1(0, mmSDMA0_POWER_CNTL, data);
		}
	}
}