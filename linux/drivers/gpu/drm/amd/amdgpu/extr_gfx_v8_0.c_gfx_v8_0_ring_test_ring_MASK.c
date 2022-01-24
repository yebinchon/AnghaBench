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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_UCONFIG_REG ; 
 int PACKET3_SET_UCONFIG_REG_START ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int FUNC4 (struct amdgpu_device*,int*) ; 
 int FUNC5 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC4(adev, &scratch);
	if (r)
		return r;

	FUNC2(scratch, 0xCAFEDEAD);
	r = FUNC5(ring, 3);
	if (r)
		goto error_free_scratch;

	FUNC7(ring, FUNC0(PACKET3_SET_UCONFIG_REG, 1));
	FUNC7(ring, (scratch - PACKET3_SET_UCONFIG_REG_START));
	FUNC7(ring, 0xDEADBEEF);
	FUNC6(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC1(scratch);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC8(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

error_free_scratch:
	FUNC3(adev, scratch);
	return r;
}