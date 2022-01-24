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
struct amdgpu_ring {int /*<<< orphan*/  doorbell_index; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_UNMAP_QUEUES ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct amdgpu_ring*,int) ; 
 int FUNC8 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev)
{
	int r, i;
	struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;

	r = FUNC7(kiq_ring, 6 * adev->gfx.num_compute_rings);
	if (r)
		FUNC0("Failed to lock KIQ (%d).\n", r);

	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

		FUNC9(kiq_ring, FUNC1(PACKET3_UNMAP_QUEUES, 4));
		FUNC9(kiq_ring, /* Q_sel: 0, vmid: 0, engine: 0, num_Q: 1 */
						FUNC2(1) | /* RESET_QUEUES */
						FUNC6(0) |
						FUNC4(0) |
						FUNC5(1));
		FUNC9(kiq_ring, FUNC3(ring->doorbell_index));
		FUNC9(kiq_ring, 0);
		FUNC9(kiq_ring, 0);
		FUNC9(kiq_ring, 0);
	}
	r = FUNC8(kiq_ring);
	if (r)
		FUNC0("KCQ disable failed\n");

	return r;
}