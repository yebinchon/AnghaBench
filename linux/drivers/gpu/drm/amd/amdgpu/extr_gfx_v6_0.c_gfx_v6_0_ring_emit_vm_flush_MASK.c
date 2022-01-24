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
 int /*<<< orphan*/  PACKET3_SWITCH_BUFFER ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring,
					unsigned vmid, uint64_t pd_addr)
{
	int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);

	FUNC3(ring, vmid, pd_addr);

	/* wait for the invalidate to complete */
	FUNC4(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC4(ring, (FUNC2(0) |  /* always */
				 FUNC1(0))); /* me */
	FUNC4(ring, mmVM_INVALIDATE_REQUEST);
	FUNC4(ring, 0);
	FUNC4(ring, 0); /* ref */
	FUNC4(ring, 0); /* mask */
	FUNC4(ring, 0x20); /* poll interval */

	if (usepfp) {
		/* sync PFP to ME, otherwise we might get invalid PFP reads */
		FUNC4(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
		FUNC4(ring, 0x0);

		/* synce CE with ME to prevent CE fetch CEIB before context switch done */
		FUNC4(ring, FUNC0(PACKET3_SWITCH_BUFFER, 0));
		FUNC4(ring, 0);
		FUNC4(ring, FUNC0(PACKET3_SWITCH_BUFFER, 0));
		FUNC4(ring, 0);
	}
}