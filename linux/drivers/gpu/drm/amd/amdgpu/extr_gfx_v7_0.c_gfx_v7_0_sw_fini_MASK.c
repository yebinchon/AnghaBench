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
struct TYPE_3__ {int /*<<< orphan*/  cp_table_ptr; int /*<<< orphan*/  cp_table_gpu_addr; int /*<<< orphan*/  cp_table_obj; scalar_t__ cp_table_size; int /*<<< orphan*/  cs_ptr; int /*<<< orphan*/  clear_state_gpu_addr; int /*<<< orphan*/  clear_state_obj; } ;
struct TYPE_4__ {int num_gfx_rings; int num_compute_rings; TYPE_1__ rlc; int /*<<< orphan*/ * compute_ring; int /*<<< orphan*/ * gfx_ring; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int i;

	for (i = 0; i < adev->gfx.num_gfx_rings; i++)
		FUNC2(&adev->gfx.gfx_ring[i]);
	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		FUNC2(&adev->gfx.compute_ring[i]);

	FUNC3(adev);
	FUNC1(adev);
	FUNC5(adev);
	FUNC0(&adev->gfx.rlc.clear_state_obj,
				&adev->gfx.rlc.clear_state_gpu_addr,
				(void **)&adev->gfx.rlc.cs_ptr);
	if (adev->gfx.rlc.cp_table_size) {
		FUNC0(&adev->gfx.rlc.cp_table_obj,
				&adev->gfx.rlc.cp_table_gpu_addr,
				(void **)&adev->gfx.rlc.cp_table_ptr);
	}
	FUNC4(adev);

	return 0;
}