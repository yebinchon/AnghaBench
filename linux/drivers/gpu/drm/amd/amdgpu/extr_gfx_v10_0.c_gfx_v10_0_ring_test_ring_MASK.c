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
struct amdgpu_ring {int /*<<< orphan*/  idx; struct amdgpu_device* adev; } ;
struct amdgpu_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_UCONFIG_REG ; 
 int PACKET3_SET_UCONFIG_REG_START ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (struct amdgpu_device*,int*) ; 
 int FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC6(adev, &scratch);
	if (r) {
		FUNC0("amdgpu: cp failed to get scratch reg (%d).\n", r);
		return r;
	}

	FUNC4(scratch, 0xCAFEDEAD);

	r = FUNC7(ring, 3);
	if (r) {
		FUNC0("amdgpu: cp failed to lock ring %d (%d).\n",
			  ring->idx, r);
		FUNC5(adev, scratch);
		return r;
	}

	FUNC9(ring, FUNC2(PACKET3_SET_UCONFIG_REG, 1));
	FUNC9(ring, (scratch - PACKET3_SET_UCONFIG_REG_START));
	FUNC9(ring, 0xDEADBEEF);
	FUNC8(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC3(scratch);
		if (tmp == 0xDEADBEEF)
			break;
		if (amdgpu_emu_mode == 1)
			FUNC10(1);
		else
			FUNC11(1);
	}
	if (i < adev->usec_timeout) {
		if (amdgpu_emu_mode == 1)
			FUNC1("ring test on %d succeeded in %d msecs\n",
				 ring->idx, i);
		else
			FUNC1("ring test on %d succeeded in %d usecs\n",
				 ring->idx, i);
	} else {
		FUNC0("amdgpu: ring %d test failed (scratch(0x%04X)=0x%08X)\n",
			  ring->idx, scratch, tmp);
		r = -EINVAL;
	}
	FUNC5(adev, scratch);

	return r;
}