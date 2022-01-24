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
typedef  int /*<<< orphan*/  uint64_t ;
struct radeon_semaphore {int /*<<< orphan*/  gpu_addr; } ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_MEM_SEMAPHORE ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 unsigned int PACKET3_SEM_SEL_SIGNAL ; 
 unsigned int PACKET3_SEM_SEL_WAIT ; 
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_ring*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct radeon_device *rdev,
			     struct radeon_ring *ring,
			     struct radeon_semaphore *semaphore,
			     bool emit_wait)
{
	uint64_t addr = semaphore->gpu_addr;
	unsigned sel = emit_wait ? PACKET3_SEM_SEL_WAIT : PACKET3_SEM_SEL_SIGNAL;

	FUNC2(ring, FUNC0(PACKET3_MEM_SEMAPHORE, 1));
	FUNC2(ring, FUNC1(addr));
	FUNC2(ring, (FUNC3(addr) & 0xffff) | sel);

	if (emit_wait && ring->idx == RADEON_RING_TYPE_GFX_INDEX) {
		/* Prevent the PFP from running ahead of the semaphore wait */
		FUNC2(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
		FUNC2(ring, 0x0);
	}

	return true;
}