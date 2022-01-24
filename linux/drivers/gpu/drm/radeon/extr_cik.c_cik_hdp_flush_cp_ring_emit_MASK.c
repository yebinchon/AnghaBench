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
typedef  int u32 ;
struct radeon_ring {int idx; int pipe; int /*<<< orphan*/  me; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
#define  CAYMAN_RING_TYPE_CP1_INDEX 130 
#define  CAYMAN_RING_TYPE_CP2_INDEX 129 
 int CP0 ; 
 int CP2 ; 
 int CP6 ; 
 int GPU_HDP_FLUSH_DONE ; 
 int GPU_HDP_FLUSH_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
#define  RADEON_RING_TYPE_GFX_INDEX 128 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_ring*,int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
				       int ridx)
{
	struct radeon_ring *ring = &rdev->ring[ridx];
	u32 ref_and_mask;

	switch (ring->idx) {
	case CAYMAN_RING_TYPE_CP1_INDEX:
	case CAYMAN_RING_TYPE_CP2_INDEX:
	default:
		switch (ring->me) {
		case 0:
			ref_and_mask = CP2 << ring->pipe;
			break;
		case 1:
			ref_and_mask = CP6 << ring->pipe;
			break;
		default:
			return;
		}
		break;
	case RADEON_RING_TYPE_GFX_INDEX:
		ref_and_mask = CP0;
		break;
	}

	FUNC4(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC4(ring, (FUNC3(1) | /* write, wait, write */
				 FUNC2(3) |  /* == */
				 FUNC1(1)));   /* pfp */
	FUNC4(ring, GPU_HDP_FLUSH_REQ >> 2);
	FUNC4(ring, GPU_HDP_FLUSH_DONE >> 2);
	FUNC4(ring, ref_and_mask);
	FUNC4(ring, ref_and_mask);
	FUNC4(ring, 0x20); /* poll interval */
}