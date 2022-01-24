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
struct amdgpu_ring {int /*<<< orphan*/  mqd_obj; int /*<<< orphan*/ * mqd_ptr; } ;
struct TYPE_2__ {int num_compute_rings; struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = NULL;
	int r = 0, i;

	FUNC5(adev, true);

	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		ring = &adev->gfx.compute_ring[i];

		r = FUNC2(ring->mqd_obj, false);
		if (FUNC7(r != 0))
			goto done;
		r = FUNC0(ring->mqd_obj, (void **)&ring->mqd_ptr);
		if (!r) {
			r = FUNC6(ring);
			FUNC1(ring->mqd_obj);
			ring->mqd_ptr = NULL;
		}
		FUNC3(ring->mqd_obj);
		if (r)
			goto done;
	}

	r = FUNC4(adev);
done:
	return r;
}