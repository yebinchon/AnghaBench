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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; TYPE_2__* funcs; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SWITCH_BUFFER ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring)
{
	int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);
	uint32_t seq = ring->fence_drv.sync_seq;
	uint64_t addr = ring->fence_drv.gpu_addr;

	FUNC4(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC4(ring, (FUNC3(1) | /* memory */
				 FUNC2(3) | /* equal */
				 FUNC1(usepfp)));   /* pfp or me */
	FUNC4(ring, addr & 0xfffffffc);
	FUNC4(ring, FUNC5(addr) & 0xffffffff);
	FUNC4(ring, seq);
	FUNC4(ring, 0xffffffff);
	FUNC4(ring, 4); /* poll interval */

	if (usepfp) {
		/* synce CE with ME to prevent CE fetch CEIB before context switch done */
		FUNC4(ring, FUNC0(PACKET3_SWITCH_BUFFER, 0));
		FUNC4(ring, 0);
		FUNC4(ring, FUNC0(PACKET3_SWITCH_BUFFER, 0));
		FUNC4(ring, 0);
	}
}