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
typedef  unsigned int uint32_t ;
struct amdgpu_ib {unsigned int* ptr; int /*<<< orphan*/  length_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OP_GEN_PTEPDE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ib *ib, uint64_t pe,
				     uint64_t addr, unsigned count,
				     uint32_t incr, uint64_t flags)
{
	/* for physically contiguous pages (vram) */
	ib->ptr[ib->length_dw++] = FUNC0(SDMA_OP_GEN_PTEPDE);
	ib->ptr[ib->length_dw++] = FUNC1(pe); /* dst addr */
	ib->ptr[ib->length_dw++] = FUNC2(pe);
	ib->ptr[ib->length_dw++] = FUNC1(flags); /* mask */
	ib->ptr[ib->length_dw++] = FUNC2(flags);
	ib->ptr[ib->length_dw++] = FUNC1(addr); /* value */
	ib->ptr[ib->length_dw++] = FUNC2(addr);
	ib->ptr[ib->length_dw++] = incr; /* increment size */
	ib->ptr[ib->length_dw++] = 0;
	ib->ptr[ib->length_dw++] = count; /* number of entries */
}