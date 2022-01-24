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
 int CP_EOP_DONE_DATA_CNTL__DATA_SEL__SHIFT ; 
 int CP_EOP_DONE_DATA_CNTL__INT_SEL__SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE_EOP ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 int PACKET3_SH_ICACHE_ACTION_ENA ; 
 int PACKET3_SH_KCACHE_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_SURFACE_SYNC ; 
 int PACKET3_TCL1_ACTION_ENA ; 
 int PACKET3_TC_ACTION_ENA ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int) ; 
 int mmCP_COHER_CNTL2 ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring, u64 addr,
				     u64 seq, unsigned flags)
{
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;
	/* flush read cache over gart */
	FUNC3(ring, FUNC2(PACKET3_SET_CONFIG_REG, 1));
	FUNC3(ring, (mmCP_COHER_CNTL2 - PACKET3_SET_CONFIG_REG_START));
	FUNC3(ring, 0);
	FUNC3(ring, FUNC2(PACKET3_SURFACE_SYNC, 3));
	FUNC3(ring, PACKET3_TCL1_ACTION_ENA |
			  PACKET3_TC_ACTION_ENA |
			  PACKET3_SH_KCACHE_ACTION_ENA |
			  PACKET3_SH_ICACHE_ACTION_ENA);
	FUNC3(ring, 0xFFFFFFFF);
	FUNC3(ring, 0);
	FUNC3(ring, 10); /* poll interval */
	/* EVENT_WRITE_EOP - flush caches, send int */
	FUNC3(ring, FUNC2(PACKET3_EVENT_WRITE_EOP, 4));
	FUNC3(ring, FUNC1(CACHE_FLUSH_AND_INV_TS_EVENT) | FUNC0(5));
	FUNC3(ring, addr & 0xfffffffc);
	FUNC3(ring, (FUNC5(addr) & 0xffff) |
				((write64bit ? 2 : 1) << CP_EOP_DONE_DATA_CNTL__DATA_SEL__SHIFT) |
				((int_sel ? 2 : 0) << CP_EOP_DONE_DATA_CNTL__INT_SEL__SHIFT));
	FUNC3(ring, FUNC4(seq));
	FUNC3(ring, FUNC5(seq));
}