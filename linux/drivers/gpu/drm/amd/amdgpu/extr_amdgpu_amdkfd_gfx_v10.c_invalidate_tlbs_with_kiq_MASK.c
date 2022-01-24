#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {int /*<<< orphan*/  usec_timeout; TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int ETIME ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_INVALIDATE_TLBS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int /*<<< orphan*/ *) ; 
 long FUNC5 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev, uint16_t pasid)
{
	signed long r;
	uint32_t seq;
	struct amdgpu_ring *ring = &adev->gfx.kiq.ring;

	FUNC9(&adev->gfx.kiq.ring_lock);
	FUNC6(ring, 12); /* fence + invalidate_tlbs package*/
	FUNC8(ring, FUNC1(PACKET3_INVALIDATE_TLBS, 0));
	FUNC8(ring,
			FUNC2(1) |
			FUNC3(pasid));
	FUNC4(ring, &seq);
	FUNC7(ring);
	FUNC10(&adev->gfx.kiq.ring_lock);

	r = FUNC5(ring, seq, adev->usec_timeout);
	if (r < 1) {
		FUNC0("wait for kiq fence error: %ld.\n", r);
		return -ETIME;
	}

	return 0;
}