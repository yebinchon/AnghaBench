#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cp_table_obj; int /*<<< orphan*/  cp_table_ptr; int /*<<< orphan*/  cp_table_gpu_addr; int /*<<< orphan*/  cp_table_size; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct amdgpu_device *adev)
{
	int r;

	r = FUNC0(adev, adev->gfx.rlc.cp_table_size,
				      PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
				      &adev->gfx.rlc.cp_table_obj,
				      &adev->gfx.rlc.cp_table_gpu_addr,
				      (void **)&adev->gfx.rlc.cp_table_ptr);
	if (r) {
		FUNC5(adev->dev, "(%d) failed to create cp table bo\n", r);
		FUNC3(adev);
		return r;
	}

	/* set up the cp table */
	FUNC4(adev);
	FUNC1(adev->gfx.rlc.cp_table_obj);
	FUNC2(adev->gfx.rlc.cp_table_obj);

	return 0;
}