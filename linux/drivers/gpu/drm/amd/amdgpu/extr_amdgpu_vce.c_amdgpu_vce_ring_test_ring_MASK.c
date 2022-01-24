#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VCE_CMD_END ; 
 int FUNC0 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC2 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t rptr;
	unsigned i;
	int r, timeout = adev->usec_timeout;

	/* skip ring test for sriov*/
	if (FUNC4(adev))
		return 0;

	r = FUNC0(ring, 16);
	if (r)
		return r;

	rptr = FUNC2(ring);

	FUNC3(ring, VCE_CMD_END);
	FUNC1(ring);

	for (i = 0; i < timeout; i++) {
		if (FUNC2(ring) != rptr)
			break;
		FUNC5(1);
	}

	if (i >= timeout)
		r = -ETIMEDOUT;

	return r;
}