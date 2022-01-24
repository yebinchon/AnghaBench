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
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER_CONST ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	u32 header, control = 0;

	if (ib->flags & AMDGPU_IB_FLAG_CE)
		header = FUNC2(PACKET3_INDIRECT_BUFFER_CONST, 2);
	else
		header = FUNC2(PACKET3_INDIRECT_BUFFER, 2);

	control |= ib->length_dw | (vmid << 24);

	if (FUNC4(ring->adev) && (ib->flags & AMDGPU_IB_FLAG_PREEMPT)) {
		control |= FUNC1(1);

		if (!(ib->flags & AMDGPU_IB_FLAG_CE))
			FUNC5(ring);
	}

	FUNC3(ring, header);
	FUNC3(ring,
#ifdef __BIG_ENDIAN
			  (2 << 0) |
#endif
			  (ib->gpu_addr & 0xFFFFFFFC));
	FUNC3(ring, FUNC6(ib->gpu_addr) & 0xFFFF);
	FUNC3(ring, control);
}