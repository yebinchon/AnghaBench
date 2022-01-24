#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct amdgpu_ring {int wptr_offs; int me; int /*<<< orphan*/  pipe; int /*<<< orphan*/  queue; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/  mqd_obj; } ;
struct TYPE_8__ {unsigned long long gpu_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;
struct TYPE_7__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_2__ mec; TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_4__ wb; TYPE_3__ gfx; } ;
typedef  int /*<<< orphan*/  queue_mask ;

/* Variables and functions */
 int AMDGPU_MAX_COMPUTE_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_MAP_QUEUES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_SET_RESOURCES ; 
 scalar_t__ FUNC7 (int) ; 
 unsigned long long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_ring*,int) ; 
 int FUNC12 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (unsigned long long) ; 

__attribute__((used)) static int FUNC15(struct amdgpu_device *adev)
{
	struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;
	uint64_t queue_mask = 0;
	int r, i;

	for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
		if (!FUNC13(i, adev->gfx.mec.queue_bitmap))
			continue;

		/* This situation may be hit in the future if a new HW
		 * generation exposes more than 64 queues. If so, the
		 * definition of queue_mask needs updating */
		if (FUNC7(i >= (sizeof(queue_mask)*8))) {
			FUNC0("Invalid KCQ enabled: %d\n", i);
			break;
		}

		queue_mask |= (1ull << i);
	}

	r = FUNC9(kiq_ring, (8 * adev->gfx.num_compute_rings) + 8);
	if (r) {
		FUNC0("Failed to lock KIQ (%d).\n", r);
		return r;
	}
	/* set resources */
	FUNC11(kiq_ring, FUNC1(PACKET3_SET_RESOURCES, 6));
	FUNC11(kiq_ring, 0);	/* vmid_mask:0 queue_type:0 (KIQ) */
	FUNC11(kiq_ring, FUNC12(queue_mask));	/* queue mask lo */
	FUNC11(kiq_ring, FUNC14(queue_mask));	/* queue mask hi */
	FUNC11(kiq_ring, 0);	/* gws mask lo */
	FUNC11(kiq_ring, 0);	/* gws mask hi */
	FUNC11(kiq_ring, 0);	/* oac mask */
	FUNC11(kiq_ring, 0);	/* gds heap base:0, gds heap size:0 */
	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];
		uint64_t mqd_addr = FUNC8(ring->mqd_obj);
		uint64_t wptr_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);

		/* map queues */
		FUNC11(kiq_ring, FUNC1(PACKET3_MAP_QUEUES, 5));
		/* Q_sel:0, vmid:0, vidmem: 1, engine:0, num_Q:1*/
		FUNC11(kiq_ring,
				  FUNC4(1));
		FUNC11(kiq_ring,
				  FUNC2(ring->doorbell_index) |
				  FUNC6(ring->queue) |
				  FUNC5(ring->pipe) |
				  FUNC3(ring->me == 1 ? 0 : 1)); /* doorbell */
		FUNC11(kiq_ring, FUNC12(mqd_addr));
		FUNC11(kiq_ring, FUNC14(mqd_addr));
		FUNC11(kiq_ring, FUNC12(wptr_addr));
		FUNC11(kiq_ring, FUNC14(wptr_addr));
	}

	FUNC10(kiq_ring);

	return 0;
}