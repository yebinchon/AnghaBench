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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct amdgpu_ring {int /*<<< orphan*/  idx; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {unsigned int usec_timeout; TYPE_1__ wb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SDMA_OP_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SUBOP_WRITE_LINEAR ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,unsigned int) ; 
 int FUNC6 (struct amdgpu_device*,unsigned int*) ; 
 int amdgpu_emu_mode ; 
 int FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned i;
	unsigned index;
	int r;
	u32 tmp;
	u64 gpu_addr;

	r = FUNC6(adev, &index);
	if (r) {
		FUNC11(adev->dev, "(%d) failed to allocate wb slot\n", r);
		return r;
	}

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC10(tmp);

	r = FUNC7(ring, 5);
	if (r) {
		FUNC0("amdgpu: dma failed to lock ring %d (%d).\n", ring->idx, r);
		FUNC5(adev, index);
		return r;
	}

	FUNC9(ring, FUNC2(SDMA_OP_WRITE) |
			  FUNC3(SDMA_SUBOP_WRITE_LINEAR));
	FUNC9(ring, FUNC13(gpu_addr));
	FUNC9(ring, FUNC16(gpu_addr));
	FUNC9(ring, FUNC4(0));
	FUNC9(ring, 0xDEADBEEF);
	FUNC8(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC12(adev->wb.wb[index]);
		if (tmp == 0xDEADBEEF)
			break;
		if (amdgpu_emu_mode == 1)
			FUNC14(1);
		else
			FUNC15(1);
	}

	if (i < adev->usec_timeout) {
		if (amdgpu_emu_mode == 1)
			FUNC1("ring test on %d succeeded in %d msecs\n", ring->idx, i);
		else
			FUNC1("ring test on %d succeeded in %d usecs\n", ring->idx, i);
	} else {
		FUNC0("amdgpu: ring %d test failed (0x%08X)\n",
			  ring->idx, tmp);
		r = -EINVAL;
	}
	FUNC5(adev, index);

	return r;
}