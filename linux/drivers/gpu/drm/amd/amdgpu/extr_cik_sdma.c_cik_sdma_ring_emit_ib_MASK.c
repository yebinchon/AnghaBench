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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  unsigned int u32 ;
struct amdgpu_ring {int /*<<< orphan*/  wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int gpu_addr; int length_dw; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  SDMA_OPCODE_INDIRECT_BUFFER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring,
				  struct amdgpu_job *job,
				  struct amdgpu_ib *ib,
				  uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	u32 extra_bits = vmid & 0xf;

	/* IB packet must end on a 8 DW boundary */
	FUNC3(ring, (12 - (FUNC4(ring->wptr) & 7)) % 8);

	FUNC2(ring, FUNC1(SDMA_OPCODE_INDIRECT_BUFFER, 0, extra_bits));
	FUNC2(ring, ib->gpu_addr & 0xffffffe0); /* base must be 32 byte aligned */
	FUNC2(ring, FUNC5(ib->gpu_addr) & 0xffffffff);
	FUNC2(ring, ib->length_dw);

}