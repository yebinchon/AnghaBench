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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_CONTEXT_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, uint32_t flags)
{
	uint32_t dw2 = 0;

	dw2 |= 0x80000000; /* set load_enable otherwise this package is just NOPs */
	if (flags & AMDGPU_HAVE_CTX_SWITCH) {
		FUNC2(ring);
		/* set load_global_config & load_global_uconfig */
		dw2 |= 0x8001;
		/* set load_cs_sh_regs */
		dw2 |= 0x01000000;
		/* set load_per_context_state & load_gfx_sh_regs */
		dw2 |= 0x10002;
	}

	FUNC1(ring, FUNC0(PACKET3_CONTEXT_CONTROL, 1));
	FUNC1(ring, dw2);
	FUNC1(ring, 0);
}