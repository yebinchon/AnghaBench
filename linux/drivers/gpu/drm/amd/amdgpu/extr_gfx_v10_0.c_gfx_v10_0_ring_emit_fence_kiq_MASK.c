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
typedef  int /*<<< orphan*/  u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 unsigned int AMDGPU_FENCE_FLAG_INT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GC ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int WR_CONFIRM ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCPC_INT_STATUS ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct amdgpu_ring *ring, u64 addr,
					  u64 seq, unsigned int flags)
{
	struct amdgpu_device *adev = ring->adev;

	/* we only allocate 32bit for each seq wb address */
	FUNC0(flags & AMDGPU_FENCE_FLAG_64BIT);

	/* write fence seq to the "addr" */
	FUNC5(ring, FUNC1(PACKET3_WRITE_DATA, 3));
	FUNC5(ring, (FUNC4(0) |
				 FUNC3(5) | WR_CONFIRM));
	FUNC5(ring, FUNC6(addr));
	FUNC5(ring, FUNC7(addr));
	FUNC5(ring, FUNC6(seq));

	if (flags & AMDGPU_FENCE_FLAG_INT) {
		/* set register to trigger INT */
		FUNC5(ring, FUNC1(PACKET3_WRITE_DATA, 3));
		FUNC5(ring, (FUNC4(0) |
					 FUNC3(0) | WR_CONFIRM));
		FUNC5(ring, FUNC2(GC, 0, mmCPC_INT_STATUS));
		FUNC5(ring, 0);
		FUNC5(ring, 0x20000000); /* src_id is 178 */
	}
}