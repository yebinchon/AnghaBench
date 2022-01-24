#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct amdgpu_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct amdgpu_kiq {TYPE_2__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_6__ {int num_compute_rings; int /*<<< orphan*/ * compute_ring; TYPE_1__ mec; struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
typedef  int /*<<< orphan*/  queue_mask ;
struct TYPE_5__ {int map_queues_size; int /*<<< orphan*/  (* kiq_map_queues ) (struct amdgpu_ring*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* kiq_set_resources ) (struct amdgpu_ring*,unsigned long long) ;scalar_t__ set_resources_size; } ;

/* Variables and functions */
 int AMDGPU_MAX_COMPUTE_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct amdgpu_ring*,scalar_t__) ; 
 int FUNC4 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(struct amdgpu_device *adev)
{
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;
	struct amdgpu_ring *kiq_ring = &adev->gfx.kiq.ring;
	uint64_t queue_mask = 0;
	int r, i;

	if (!kiq->pmf || !kiq->pmf->kiq_map_queues || !kiq->pmf->kiq_set_resources)
		return -EINVAL;

	for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
		if (!FUNC7(i, adev->gfx.mec.queue_bitmap))
			continue;

		/* This situation may be hit in the future if a new HW
		 * generation exposes more than 64 queues. If so, the
		 * definition of queue_mask needs updating */
		if (FUNC2(i > (sizeof(queue_mask)*8))) {
			FUNC0("Invalid KCQ enabled: %d\n", i);
			break;
		}

		queue_mask |= (1ull << i);
	}

	FUNC1("kiq ring mec %d pipe %d q %d\n", kiq_ring->me, kiq_ring->pipe,
							kiq_ring->queue);

	r = FUNC3(kiq_ring, kiq->pmf->map_queues_size *
					adev->gfx.num_compute_rings +
					kiq->pmf->set_resources_size);
	if (r) {
		FUNC0("Failed to lock KIQ (%d).\n", r);
		return r;
	}

	kiq->pmf->kiq_set_resources(kiq_ring, queue_mask);
	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		kiq->pmf->kiq_map_queues(kiq_ring, &adev->gfx.compute_ring[i]);

	r = FUNC4(kiq_ring);
	if (r)
		FUNC0("KCQ enable failed\n");

	return r;
}