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
struct amdgpu_ring {scalar_t__ wptr; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int gds_size; } ;
struct TYPE_3__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {int usec_timeout; TYPE_2__ gds; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GC ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_DMA_DATA ; 
 int PACKET3_DMA_DATA_CMD_RAW_WAIT ; 
 int PACKET3_DMA_DATA_CP_SYNC ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ring*,int) ; 
 scalar_t__ FUNC9 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  mmGDS_VMID0_BASE ; 
 int /*<<< orphan*/  mmGDS_VMID0_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = &adev->gfx.compute_ring[0];
	int i, r;

	r = FUNC6(ring, 7);
	if (r) {
		FUNC0("amdgpu: GDS workarounds failed to lock ring %s (%d).\n",
			ring->name, r);
		return r;
	}

	FUNC5(GC, 0, mmGDS_VMID0_BASE, 0x00000000);
	FUNC5(GC, 0, mmGDS_VMID0_SIZE, adev->gds.gds_size);

	FUNC8(ring, FUNC1(PACKET3_DMA_DATA, 5));
	FUNC8(ring, (PACKET3_DMA_DATA_CP_SYNC |
				FUNC2(1) |
				FUNC4(2) |
				FUNC3(0)));
	FUNC8(ring, 0);
	FUNC8(ring, 0);
	FUNC8(ring, 0);
	FUNC8(ring, 0);
	FUNC8(ring, PACKET3_DMA_DATA_CMD_RAW_WAIT |
				adev->gds.gds_size);

	FUNC7(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		if (ring->wptr == FUNC9(ring))
			break;
		FUNC10(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

	FUNC5(GC, 0, mmGDS_VMID0_SIZE, 0x00000000);

	return r;
}