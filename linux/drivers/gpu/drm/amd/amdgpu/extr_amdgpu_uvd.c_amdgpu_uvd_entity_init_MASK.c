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
struct drm_sched_rq {int dummy; } ;
struct TYPE_5__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_6__ {int /*<<< orphan*/  entity; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t DRM_SCHED_PRIORITY_NORMAL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_sched_rq**,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	struct drm_sched_rq *rq;
	int r;

	ring = &adev->uvd.inst[0].ring;
	rq = &ring->sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
	r = FUNC1(&adev->uvd.entity, &rq, 1, NULL);
	if (r) {
		FUNC0("Failed setting up UVD kernel entity.\n");
		return r;
	}

	return 0;
}