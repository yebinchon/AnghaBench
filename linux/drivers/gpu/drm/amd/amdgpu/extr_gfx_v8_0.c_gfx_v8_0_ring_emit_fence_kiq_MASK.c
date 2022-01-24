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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 unsigned int AMDGPU_FENCE_FLAG_INT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int WR_CONFIRM ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int mmCPC_INT_STATUS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring, u64 addr,
					 u64 seq, unsigned int flags)
{
	/* we only allocate 32bit for each seq wb address */
	FUNC0(flags & AMDGPU_FENCE_FLAG_64BIT);

	/* write fence seq to the "addr" */
	FUNC4(ring, FUNC1(PACKET3_WRITE_DATA, 3));
	FUNC4(ring, (FUNC3(0) |
				 FUNC2(5) | WR_CONFIRM));
	FUNC4(ring, FUNC5(addr));
	FUNC4(ring, FUNC6(addr));
	FUNC4(ring, FUNC5(seq));

	if (flags & AMDGPU_FENCE_FLAG_INT) {
		/* set register to trigger INT */
		FUNC4(ring, FUNC1(PACKET3_WRITE_DATA, 3));
		FUNC4(ring, (FUNC3(0) |
					 FUNC2(0) | WR_CONFIRM));
		FUNC4(ring, mmCPC_INT_STATUS);
		FUNC4(ring, 0);
		FUNC4(ring, 0x20000000); /* src_id is 178 */
	}
}