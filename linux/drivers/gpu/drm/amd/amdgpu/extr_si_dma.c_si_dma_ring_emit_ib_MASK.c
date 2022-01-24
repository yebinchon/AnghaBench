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
struct amdgpu_ib {int gpu_addr; int length_dw; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring,
				struct amdgpu_job *job,
				struct amdgpu_ib *ib,
				uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	/* The indirect buffer packet must end on an 8 DW boundary in the DMA ring.
	 * Pad as necessary with NOPs.
	 */
	while ((FUNC4(ring->wptr) & 7) != 5)
		FUNC3(ring, FUNC2(DMA_PACKET_NOP, 0, 0, 0, 0));
	FUNC3(ring, FUNC1(DMA_PACKET_INDIRECT_BUFFER, vmid, 0));
	FUNC3(ring, (ib->gpu_addr & 0xFFFFFFE0));
	FUNC3(ring, (ib->length_dw << 12) | (FUNC5(ib->gpu_addr) & 0xFF));

}