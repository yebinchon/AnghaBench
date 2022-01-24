#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 unsigned int AMDGPU_FENCE_FLAG_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_TS_EVENT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_RELEASE_MEM ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int PACKET3_RELEASE_MEM_GCR_GL2_WB ; 
 int PACKET3_RELEASE_MEM_GCR_GLM_INV ; 
 int PACKET3_RELEASE_MEM_GCR_GLM_WB ; 
 int PACKET3_RELEASE_MEM_GCR_SEQ ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct amdgpu_ring *ring, u64 addr,
				     u64 seq, unsigned flags)
{
	struct amdgpu_device *adev = ring->adev;
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;

	/* Interrupt not work fine on GFX10.1 model yet. Use fallback instead */
	if (adev->pdev->device == 0x50)
		int_sel = false;

	/* RELEASE_MEM - flush caches, send int */
	FUNC7(ring, FUNC1(PACKET3_RELEASE_MEM, 6));
	FUNC7(ring, (PACKET3_RELEASE_MEM_GCR_SEQ |
				 PACKET3_RELEASE_MEM_GCR_GL2_WB |
				 PACKET3_RELEASE_MEM_GCR_GLM_INV | /* must be set with GLM_WB */
				 PACKET3_RELEASE_MEM_GCR_GLM_WB |
				 FUNC2(3) |
				 FUNC5(CACHE_FLUSH_AND_INV_TS_EVENT) |
				 FUNC4(5)));
	FUNC7(ring, (FUNC3(write64bit ? 2 : 1) |
				 FUNC6(int_sel ? 2 : 0)));

	/*
	 * the address should be Qword aligned if 64bit write, Dword
	 * aligned if only send 32bit data low (discard data high)
	 */
	if (write64bit)
		FUNC0(addr & 0x7);
	else
		FUNC0(addr & 0x3);
	FUNC7(ring, FUNC8(addr));
	FUNC7(ring, FUNC9(addr));
	FUNC7(ring, FUNC8(seq));
	FUNC7(ring, FUNC9(seq));
	FUNC7(ring, 0);
}