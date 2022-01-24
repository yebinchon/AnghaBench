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
 int AMDGPU_HAVE_CTX_SWITCH ; 
 int AMDGPU_IB_FLAG_CE ; 
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER_CONST ; 
 int /*<<< orphan*/  PACKET3_SWITCH_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,unsigned int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	unsigned vmid = FUNC0(job);
	u32 header, control = 0;

	/* insert SWITCH_BUFFER packet before first IB in the ring frame */
	if (flags & AMDGPU_HAVE_CTX_SWITCH) {
		FUNC2(ring, FUNC1(PACKET3_SWITCH_BUFFER, 0));
		FUNC2(ring, 0);
	}

	if (ib->flags & AMDGPU_IB_FLAG_CE)
		header = FUNC1(PACKET3_INDIRECT_BUFFER_CONST, 2);
	else
		header = FUNC1(PACKET3_INDIRECT_BUFFER, 2);

	control |= ib->length_dw | (vmid << 24);

	FUNC2(ring, header);
	FUNC2(ring,
#ifdef __BIG_ENDIAN
			  (2 << 0) |
#endif
			  (ib->gpu_addr & 0xFFFFFFFC));
	FUNC2(ring, FUNC3(ib->gpu_addr) & 0xFFFF);
	FUNC2(ring, control);
}