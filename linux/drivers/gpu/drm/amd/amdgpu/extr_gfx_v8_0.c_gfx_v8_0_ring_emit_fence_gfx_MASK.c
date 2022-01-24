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
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_TS_EVENT ; 
 int FUNC0 (int) ; 
 int EOP_TCL1_ACTION_EN ; 
 int EOP_TC_ACTION_EN ; 
 int EOP_TC_WB_ACTION_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE_EOP ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct amdgpu_ring *ring, u64 addr,
					 u64 seq, unsigned flags)
{
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;

	/* EVENT_WRITE_EOP - flush caches, send int */
	FUNC5(ring, FUNC4(PACKET3_EVENT_WRITE_EOP, 4));
	FUNC5(ring, (EOP_TCL1_ACTION_EN |
				 EOP_TC_ACTION_EN |
				 EOP_TC_WB_ACTION_EN |
				 FUNC2(CACHE_FLUSH_AND_INV_TS_EVENT) |
				 FUNC1(5)));
	FUNC5(ring, addr & 0xfffffffc);
	FUNC5(ring, (FUNC7(addr) & 0xffff) |
			  FUNC0(write64bit ? 2 : 1) | FUNC3(int_sel ? 2 : 0));
	FUNC5(ring, FUNC6(seq));
	FUNC5(ring, FUNC7(seq));

}