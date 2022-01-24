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
typedef  scalar_t__ uint32_t ;
struct amdgpu_ib {int* ptr; int /*<<< orphan*/  length_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OP_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SUBOP_WRITE_LINEAR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ib *ib, uint64_t pe,
				   uint64_t value, unsigned count,
				   uint32_t incr)
{
	unsigned ndw = count * 2;

	ib->ptr[ib->length_dw++] = FUNC0(SDMA_OP_WRITE) |
		FUNC1(SDMA_SUBOP_WRITE_LINEAR);
	ib->ptr[ib->length_dw++] = FUNC2(pe);
	ib->ptr[ib->length_dw++] = FUNC3(pe);
	ib->ptr[ib->length_dw++] = ndw - 1;
	for (; ndw > 0; ndw -= 2) {
		ib->ptr[ib->length_dw++] = FUNC2(value);
		ib->ptr[ib->length_dw++] = FUNC3(value);
		value += incr;
	}
}