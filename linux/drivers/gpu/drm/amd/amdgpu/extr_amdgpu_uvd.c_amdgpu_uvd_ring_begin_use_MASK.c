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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {scalar_t__ dpm_enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  idle_work; } ;
struct amdgpu_device {TYPE_2__ pm; TYPE_1__ uvd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_STATE_UNGATE ; 
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_UVD ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	bool set_clocks;

	if (FUNC4(adev))
		return;

	set_clocks = !FUNC5(&adev->uvd.idle_work);
	if (set_clocks) {
		if (adev->pm.dpm_enabled) {
			FUNC3(adev, true);
		} else {
			FUNC0(adev, 53300, 40000);
			FUNC1(adev, AMD_IP_BLOCK_TYPE_UVD,
							       AMD_CG_STATE_UNGATE);
			FUNC2(adev, AMD_IP_BLOCK_TYPE_UVD,
							       AMD_PG_STATE_UNGATE);
		}
	}
}