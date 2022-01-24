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
struct amdgpu_ring {int wptr_offs; int me; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/  pipe; int /*<<< orphan*/  queue; int /*<<< orphan*/  mqd_obj; } ;
struct TYPE_8__ {unsigned long long gpu_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;
struct TYPE_7__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_2__ mec; TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_4__ wb; TYPE_3__ gfx; } ;
typedef  int /*<<< orphan*/  queue_mask ;

/* Variables and functions */
 int AMDGPU_MAX_COMPUTE_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_MAP_QUEUES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_SET_RESOURCES ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 unsigned long long FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct amdgpu_ring*,int) ; 
 int FUNC17 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC18 (struct amdgpu_ring*,int) ; 
 int FUNC19 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int FUNC21 (unsigned long long) ; 

__attribute__((used)) static int FUNC22(struct amdgpu_device *adev)
{
	struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;
	uint64_t queue_mask = 0;
	int r, i;

	for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
		if (!FUNC20(i, adev->gfx.mec.queue_bitmap))
			continue;

		/* This situation may be hit in the future if a new HW
		 * generation exposes more than 64 queues. If so, the
		 * definition of queue_mask needs updating */
		if (FUNC14(i >= (sizeof(queue_mask)*8))) {
			FUNC0("Invalid KCQ enabled: %d\n", i);
			break;
		}

		queue_mask |= (1ull << i);
	}

	r = FUNC16(kiq_ring, (7 * adev->gfx.num_compute_rings) + 8);
	if (r) {
		FUNC0("Failed to lock KIQ (%d).\n", r);
		return r;
	}

	/* set resources */
	FUNC18(kiq_ring, FUNC1(PACKET3_SET_RESOURCES, 6));
	FUNC18(kiq_ring, FUNC13(0) |
			  FUNC12(0));	/* vmid_mask:0 queue_type:0 (KIQ) */
	FUNC18(kiq_ring, FUNC19(queue_mask));	/* queue mask lo */
	FUNC18(kiq_ring, FUNC21(queue_mask));	/* queue mask hi */
	FUNC18(kiq_ring, 0);	/* gws mask lo */
	FUNC18(kiq_ring, 0);	/* gws mask hi */
	FUNC18(kiq_ring, 0);	/* oac mask */
	FUNC18(kiq_ring, 0);	/* gds heap base:0, gds heap size:0 */
	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];
		uint64_t mqd_addr = FUNC15(ring->mqd_obj);
		uint64_t wptr_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);

		FUNC18(kiq_ring, FUNC1(PACKET3_MAP_QUEUES, 5));
		/* Q_sel:0, vmid:0, vidmem: 1, engine:0, num_Q:1*/
		FUNC18(kiq_ring, /* Q_sel: 0, vmid: 0, engine: 0, num_Q: 1 */
				  FUNC9(0) | /* Queue_Sel */
				  FUNC11(0) | /* VMID */
				  FUNC8(ring->queue) |
				  FUNC7(ring->pipe) |
				  FUNC5((ring->me == 1 ? 0 : 1)) |
				  FUNC10(0) | /*queue_type: normal compute queue */
				  FUNC2(0) | /* alloc format: all_on_one_pipe */
				  FUNC4(0) | /* engine_sel: compute */
				  FUNC6(1)); /* num_queues: must be 1 */
		FUNC18(kiq_ring, FUNC3(ring->doorbell_index));
		FUNC18(kiq_ring, FUNC19(mqd_addr));
		FUNC18(kiq_ring, FUNC21(mqd_addr));
		FUNC18(kiq_ring, FUNC19(wptr_addr));
		FUNC18(kiq_ring, FUNC21(wptr_addr));
	}

	r = FUNC17(kiq_ring);
	if (r)
		FUNC0("KCQ enable failed\n");

	return r;
}