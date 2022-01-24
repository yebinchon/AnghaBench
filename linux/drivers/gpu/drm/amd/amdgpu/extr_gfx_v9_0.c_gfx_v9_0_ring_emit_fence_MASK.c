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
typedef  int u64 ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 unsigned int AMDGPU_FENCE_FLAG_INT ; 
 unsigned int AMDGPU_FENCE_FLAG_TC_WB_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_TS_EVENT ; 
 int FUNC1 (int) ; 
 int EOP_TCL1_ACTION_EN ; 
 int EOP_TC_ACTION_EN ; 
 int EOP_TC_MD_ACTION_EN ; 
 int EOP_TC_NC_ACTION_EN ; 
 int EOP_TC_WB_ACTION_EN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_RELEASE_MEM ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct amdgpu_ring *ring, u64 addr,
				     u64 seq, unsigned flags)
{
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;
	bool writeback = flags & AMDGPU_FENCE_FLAG_TC_WB_ONLY;

	/* RELEASE_MEM - flush caches, send int */
	FUNC6(ring, FUNC5(PACKET3_RELEASE_MEM, 6));
	FUNC6(ring, ((writeback ? (EOP_TC_WB_ACTION_EN |
					       EOP_TC_NC_ACTION_EN) :
					      (EOP_TCL1_ACTION_EN |
					       EOP_TC_ACTION_EN |
					       EOP_TC_WB_ACTION_EN |
					       EOP_TC_MD_ACTION_EN)) |
				 FUNC3(CACHE_FLUSH_AND_INV_TS_EVENT) |
				 FUNC2(5)));
	FUNC6(ring, FUNC1(write64bit ? 2 : 1) | FUNC4(int_sel ? 2 : 0));

	/*
	 * the address should be Qword aligned if 64bit write, Dword
	 * aligned if only send 32bit data low (discard data high)
	 */
	if (write64bit)
		FUNC0(addr & 0x7);
	else
		FUNC0(addr & 0x3);
	FUNC6(ring, FUNC7(addr));
	FUNC6(ring, FUNC8(addr));
	FUNC6(ring, FUNC7(seq));
	FUNC6(ring, FUNC8(seq));
	FUNC6(ring, 0);
}