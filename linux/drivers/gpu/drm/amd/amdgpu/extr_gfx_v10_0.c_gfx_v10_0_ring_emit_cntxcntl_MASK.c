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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int AMDGPU_HAVE_CTX_SWITCH ; 
 int AMDGPU_IB_PREEMPTED ; 
 int AMDGPU_PREAMBLE_IB_PRESENT ; 
 int AMDGPU_PREAMBLE_IB_PRESENT_FIRST ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_CONTEXT_CONTROL ; 
 scalar_t__ amdgpu_mcbp ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, uint32_t flags)
{
	uint32_t dw2 = 0;

	if (amdgpu_mcbp)
		FUNC2(ring,
				    flags & AMDGPU_IB_PREEMPTED ? true : false);

	FUNC3(ring, true);

	dw2 |= 0x80000000; /* set load_enable otherwise this package is just NOPs */
	if (flags & AMDGPU_HAVE_CTX_SWITCH) {
		/* set load_global_config & load_global_uconfig */
		dw2 |= 0x8001;
		/* set load_cs_sh_regs */
		dw2 |= 0x01000000;
		/* set load_per_context_state & load_gfx_sh_regs for GFX */
		dw2 |= 0x10002;

		/* set load_ce_ram if preamble presented */
		if (AMDGPU_PREAMBLE_IB_PRESENT & flags)
			dw2 |= 0x10000000;
	} else {
		/* still load_ce_ram if this is the first time preamble presented
		 * although there is no context switch happens.
		 */
		if (AMDGPU_PREAMBLE_IB_PRESENT_FIRST & flags)
			dw2 |= 0x10000000;
	}

	FUNC1(ring, FUNC0(PACKET3_CONTEXT_CONTROL, 1));
	FUNC1(ring, dw2);
	FUNC1(ring, 0);
}