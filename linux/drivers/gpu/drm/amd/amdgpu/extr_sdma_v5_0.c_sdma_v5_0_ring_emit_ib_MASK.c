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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {int /*<<< orphan*/  wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  SDMA_OP_INDIRECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct amdgpu_ring *ring,
				   struct amdgpu_job *job,
				   struct amdgpu_ib *ib,
				   uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	uint64_t csa_mc_addr = FUNC4(ring, vmid);

	/* IB packet must end on a 8 DW boundary */
	FUNC6(ring, (10 - (FUNC5(ring->wptr) & 7)) % 8);

	FUNC3(ring, FUNC1(SDMA_OP_INDIRECT) |
			  FUNC2(vmid & 0xf));
	/* base must be 32 byte aligned */
	FUNC3(ring, FUNC5(ib->gpu_addr) & 0xffffffe0);
	FUNC3(ring, FUNC7(ib->gpu_addr));
	FUNC3(ring, ib->length_dw);
	FUNC3(ring, FUNC5(csa_mc_addr));
	FUNC3(ring, FUNC7(csa_mc_addr));
}