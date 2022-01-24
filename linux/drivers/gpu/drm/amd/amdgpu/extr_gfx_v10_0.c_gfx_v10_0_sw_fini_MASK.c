#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ load_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  ring; } ;
struct TYPE_5__ {int num_gfx_rings; int num_compute_rings; TYPE_1__ kiq; int /*<<< orphan*/ * compute_ring; int /*<<< orphan*/ * gfx_ring; } ;
struct amdgpu_device {TYPE_3__ firmware; TYPE_2__ gfx; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC11(void *handle)
{
	int i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (i = 0; i < adev->gfx.num_gfx_rings; i++)
		FUNC3(&adev->gfx.gfx_ring[i]);
	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		FUNC3(&adev->gfx.compute_ring[i]);

	FUNC2(adev);
	FUNC1(&adev->gfx.kiq.ring, &adev->gfx.kiq.irq);
	FUNC0(adev);

	FUNC8(adev);
	FUNC4(adev);
	FUNC6(adev);
	FUNC10(adev);
	FUNC7(adev);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO)
		FUNC9(adev);

	FUNC5(adev);

	return 0;
}