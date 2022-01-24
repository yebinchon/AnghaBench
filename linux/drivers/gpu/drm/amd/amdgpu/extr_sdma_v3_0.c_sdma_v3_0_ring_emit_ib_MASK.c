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
struct amdgpu_ring {int /*<<< orphan*/  wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  SDMA_OP_INDIRECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring,
				   struct amdgpu_job *job,
				   struct amdgpu_ib *ib,
				   uint32_t flags)
{
	unsigned vmid = FUNC0(job);

	/* IB packet must end on a 8 DW boundary */
	FUNC5(ring, (10 - (FUNC4(ring->wptr) & 7)) % 8);

	FUNC3(ring, FUNC1(SDMA_OP_INDIRECT) |
			  FUNC2(vmid & 0xf));
	/* base must be 32 byte aligned */
	FUNC3(ring, FUNC4(ib->gpu_addr) & 0xffffffe0);
	FUNC3(ring, FUNC6(ib->gpu_addr));
	FUNC3(ring, ib->length_dw);
	FUNC3(ring, 0);
	FUNC3(ring, 0);

}