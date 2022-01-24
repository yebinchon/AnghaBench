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
 int /*<<< orphan*/  SDMA_OP_FENCE ; 
 int /*<<< orphan*/  SDMA_OP_TRAP ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring, u64 addr, u64 seq,
				      unsigned flags)
{
	struct amdgpu_device *adev = ring->adev;
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	/* write the fence */
	FUNC4(ring, FUNC2(SDMA_OP_FENCE) |
			  FUNC1(0x3)); /* Ucached(UC) */
	/* zero in first two bits */
	FUNC0(addr & 0x3);
	FUNC4(ring, FUNC5(addr));
	FUNC4(ring, FUNC6(addr));
	FUNC4(ring, FUNC5(seq));

	/* optionally write high bits as well */
	if (write64bit) {
		addr += 4;
		FUNC4(ring, FUNC2(SDMA_OP_FENCE) |
				  FUNC1(0x3));
		/* zero in first two bits */
		FUNC0(addr & 0x3);
		FUNC4(ring, FUNC5(addr));
		FUNC4(ring, FUNC6(addr));
		FUNC4(ring, FUNC6(seq));
	}

	/* Interrupt not work fine on GFX10.1 model yet. Use fallback instead */
	if ((flags & AMDGPU_FENCE_FLAG_INT) && adev->pdev->device != 0x50) {
		/* generate an interrupt */
		FUNC4(ring, FUNC2(SDMA_OP_TRAP));
		FUNC4(ring, FUNC3(0));
	}
}