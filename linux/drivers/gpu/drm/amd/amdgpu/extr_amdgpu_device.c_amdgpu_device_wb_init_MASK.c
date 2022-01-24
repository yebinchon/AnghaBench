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
struct TYPE_2__ {int num_wb; char used; scalar_t__ wb; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/ * wb_obj; } ;
struct amdgpu_device {TYPE_1__ wb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int AMDGPU_MAX_WB ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	int r;

	if (adev->wb.wb_obj == NULL) {
		/* AMDGPU_MAX_WB * sizeof(uint32_t) * 8 = AMDGPU_MAX_WB 256bit slots */
		r = FUNC0(adev, AMDGPU_MAX_WB * sizeof(uint32_t) * 8,
					    PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
					    &adev->wb.wb_obj, &adev->wb.gpu_addr,
					    (void **)&adev->wb.wb);
		if (r) {
			FUNC1(adev->dev, "(%d) create WB bo failed\n", r);
			return r;
		}

		adev->wb.num_wb = AMDGPU_MAX_WB;
		FUNC2(&adev->wb.used, 0, sizeof(adev->wb.used));

		/* clear wb memory */
		FUNC2((char *)adev->wb.wb, 0, AMDGPU_MAX_WB * sizeof(uint32_t) * 8);
	}

	return 0;
}