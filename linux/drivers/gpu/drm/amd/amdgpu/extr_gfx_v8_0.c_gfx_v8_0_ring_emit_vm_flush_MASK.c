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
typedef  int /*<<< orphan*/  uint64_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring,
					unsigned vmid, uint64_t pd_addr)
{
	int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);

	FUNC4(ring, vmid, pd_addr);

	/* wait for the invalidate to complete */
	FUNC5(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC5(ring, (FUNC3(0) | /* wait */
				 FUNC2(0) |  /* always */
				 FUNC1(0))); /* me */
	FUNC5(ring, mmVM_INVALIDATE_REQUEST);
	FUNC5(ring, 0);
	FUNC5(ring, 0); /* ref */
	FUNC5(ring, 0); /* mask */
	FUNC5(ring, 0x20); /* poll interval */

	/* compute doesn't have PFP */
	if (usepfp) {
		/* sync PFP to ME, otherwise we might get invalid PFP reads */
		FUNC5(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
		FUNC5(ring, 0x0);
	}
}