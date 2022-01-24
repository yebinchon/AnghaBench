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
typedef  int u8 ;
struct amdgpu_ring {int me; int pipe; int queue; int /*<<< orphan*/  sched; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					struct amdgpu_iv_entry *entry)
{
	u8 me_id, pipe_id, queue_id;
	struct amdgpu_ring *ring;
	int i;

	me_id = (entry->ring_id & 0x0c) >> 2;
	pipe_id = (entry->ring_id & 0x03) >> 0;
	queue_id = (entry->ring_id & 0x70) >> 4;

	switch (me_id) {
	case 0:
		for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
			ring = &adev->gfx.gfx_ring[i];
			/* we only enabled 1 gfx queue per pipe for now */
			if (ring->me == me_id && ring->pipe == pipe_id)
				FUNC1(&ring->sched);
		}
		break;
	case 1:
	case 2:
		for (i = 0; i < adev->gfx.num_compute_rings; i++) {
			ring = &adev->gfx.compute_ring[i];
			if (ring->me == me_id && ring->pipe == pipe_id &&
			    ring->queue == queue_id)
				FUNC1(&ring->sched);
		}
		break;
	default:
		FUNC0();
	}
}