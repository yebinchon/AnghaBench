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
struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ cik; } ;
struct radeon_device {TYPE_2__ config; struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PARTITION_BASE ; 
 int /*<<< orphan*/  CP_DEVICE_ID ; 
 int /*<<< orphan*/  CP_ENDIAN_SWAP ; 
 int /*<<< orphan*/  CP_MAX_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_CONTEXT_CONTROL ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_SET_BASE ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int cik_default_size ; 
 int* cik_default_state ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 

__attribute__((used)) static int FUNC8(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r, i;

	/* init the CP */
	FUNC3(CP_MAX_CONTEXT, rdev->config.cik.max_hw_contexts - 1);
	FUNC3(CP_ENDIAN_SWAP, 0);
	FUNC3(CP_DEVICE_ID, 1);

	FUNC4(rdev, true);

	r = FUNC5(rdev, ring, cik_default_size + 17);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}

	/* init the CE partitions.  CE only used for gfx on CIK */
	FUNC7(ring, FUNC1(PACKET3_SET_BASE, 2));
	FUNC7(ring, FUNC2(CE_PARTITION_BASE));
	FUNC7(ring, 0x8000);
	FUNC7(ring, 0x8000);

	/* setup clear context state */
	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	FUNC7(ring, FUNC1(PACKET3_CONTEXT_CONTROL, 1));
	FUNC7(ring, 0x80000000);
	FUNC7(ring, 0x80000000);

	for (i = 0; i < cik_default_size; i++)
		FUNC7(ring, cik_default_state[i]);

	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	/* set clear context state */
	FUNC7(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC7(ring, 0);

	FUNC7(ring, FUNC1(PACKET3_SET_CONTEXT_REG, 2));
	FUNC7(ring, 0x00000316);
	FUNC7(ring, 0x0000000e); /* VGT_VERTEX_REUSE_BLOCK_CNTL */
	FUNC7(ring, 0x00000010); /* VGT_OUT_DEALLOC_CNTL */

	FUNC6(rdev, ring, false);

	return 0;
}