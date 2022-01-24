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
typedef  int uint32_t ;
struct amdgpu_ring {int /*<<< orphan*/  me; struct amdgpu_device* adev; } ;
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_CONTEXT_ID ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	FUNC3(UVD, ring->me, mmUVD_CONTEXT_ID, 0xCAFEDEAD);
	r = FUNC4(ring, 3);
	if (r)
		return r;

	FUNC6(ring,
		FUNC0(FUNC2(UVD, ring->me, mmUVD_CONTEXT_ID), 0));
	FUNC6(ring, 0xDEADBEEF);
	FUNC5(ring);
	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC1(UVD, ring->me, mmUVD_CONTEXT_ID);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC7(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

	return r;
}