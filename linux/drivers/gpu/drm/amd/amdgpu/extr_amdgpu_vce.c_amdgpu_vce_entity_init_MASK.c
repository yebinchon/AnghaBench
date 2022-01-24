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
struct drm_sched_rq {int dummy; } ;
struct TYPE_3__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_1__ sched; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_2__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t DRM_SCHED_PRIORITY_NORMAL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_sched_rq**,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	struct drm_sched_rq *rq;
	int r;

	ring = &adev->vce.ring[0];
	rq = &ring->sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
	r = FUNC1(&adev->vce.entity, &rq, 1, NULL);
	if (r != 0) {
		FUNC0("Failed setting up VCE run queue.\n");
		return r;
	}

	return 0;
}