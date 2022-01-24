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
struct amdgpu_ring {int /*<<< orphan*/  adev; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int flags; unsigned int length_dw; int gpu_addr; } ;

/* Variables and functions */
 int AMDGPU_IB_FLAG_CE ; 
 int AMDGPU_IB_FLAG_PREEMPT ; 
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER_CONST ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*) ; 
 int FUNC7 (int) ; 
 unsigned int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	u32 header, control = 0;

	if (ib->flags & AMDGPU_IB_FLAG_CE)
		header = FUNC3(PACKET3_INDIRECT_BUFFER_CONST, 2);
	else
		header = FUNC3(PACKET3_INDIRECT_BUFFER, 2);

	control |= ib->length_dw | (vmid << 24);

	if (FUNC5(ring->adev) && (ib->flags & AMDGPU_IB_FLAG_PREEMPT)) {
		control |= FUNC2(1);

		if (!(ib->flags & AMDGPU_IB_FLAG_CE))
			FUNC6(ring);
	}

	FUNC4(ring, header);
	FUNC1(ib->gpu_addr & 0x3); /* Dword align */
	FUNC4(ring,
#ifdef __BIG_ENDIAN
		(2 << 0) |
#endif
		FUNC7(ib->gpu_addr));
	FUNC4(ring, FUNC8(ib->gpu_addr));
	FUNC4(ring, control);
}