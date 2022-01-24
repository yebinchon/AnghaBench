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
typedef  unsigned int u32 ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int flags; unsigned int length_dw; int gpu_addr; } ;

/* Variables and functions */
 int AMDGPU_IB_FLAG_CE ; 
 int AMDGPU_IB_FLAG_PREEMPT ; 
 int AMDGPU_IB_PREEMPTED ; 
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER_CNST ; 
 scalar_t__ amdgpu_mcbp ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
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
		header = FUNC4(PACKET3_INDIRECT_BUFFER_CNST, 2);
	else
		header = FUNC4(PACKET3_INDIRECT_BUFFER, 2);

	control |= ib->length_dw | (vmid << 24);

	if (amdgpu_mcbp && (ib->flags & AMDGPU_IB_FLAG_PREEMPT)) {
		control |= FUNC2(1);

		if (flags & AMDGPU_IB_PREEMPTED)
			control |= FUNC3(1);

		if (!(ib->flags & AMDGPU_IB_FLAG_CE))
			FUNC6(ring,
				    flags & AMDGPU_IB_PREEMPTED ? true : false);
	}

	FUNC5(ring, header);
	FUNC1(ib->gpu_addr & 0x3); /* Dword align */
	FUNC5(ring,
#ifdef __BIG_ENDIAN
		(2 << 0) |
#endif
		FUNC7(ib->gpu_addr));
	FUNC5(ring, FUNC8(ib->gpu_addr));
	FUNC5(ring, control);
}