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
struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {int flags; scalar_t__ asic_type; TYPE_2__ gfx; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int AMD_IS_APU ; 
 scalar_t__ CHIP_ARCTURUS ; 
 int FUNC0 (struct amdgpu_ring*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	int r, i;
	struct amdgpu_ring *ring;

	if (!(adev->flags & AMD_IS_APU))
		FUNC4(adev, false);

	if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
		if (adev->asic_type != CHIP_ARCTURUS) {
			/* legacy firmware loading */
			r = FUNC2(adev);
			if (r)
				return r;
		}

		r = FUNC1(adev);
		if (r)
			return r;
	}

	r = FUNC6(adev);
	if (r)
		return r;

	if (adev->asic_type != CHIP_ARCTURUS) {
		r = FUNC3(adev);
		if (r)
			return r;
	}

	r = FUNC5(adev);
	if (r)
		return r;

	if (adev->asic_type != CHIP_ARCTURUS) {
		ring = &adev->gfx.gfx_ring[0];
		r = FUNC0(ring);
		if (r)
			return r;
	}

	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		ring = &adev->gfx.compute_ring[i];
		FUNC0(ring);
	}

	FUNC4(adev, true);

	return 0;
}