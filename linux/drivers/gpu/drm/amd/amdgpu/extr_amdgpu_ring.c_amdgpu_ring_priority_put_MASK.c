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
struct amdgpu_ring {int priority; int /*<<< orphan*/  priority_mutex; TYPE_1__* funcs; int /*<<< orphan*/ * num_jobs; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_priority ) (struct amdgpu_ring*,int) ;} ;

/* Variables and functions */
 int DRM_SCHED_PRIORITY_MIN ; 
 int DRM_SCHED_PRIORITY_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 

void FUNC5(struct amdgpu_ring *ring,
			      enum drm_sched_priority priority)
{
	int i;

	if (!ring->funcs->set_priority)
		return;

	if (FUNC0(&ring->num_jobs[priority]) > 0)
		return;

	/* no need to restore if the job is already at the lowest priority */
	if (priority == DRM_SCHED_PRIORITY_NORMAL)
		return;

	FUNC2(&ring->priority_mutex);
	/* something higher prio is executing, no need to decay */
	if (ring->priority > priority)
		goto out_unlock;

	/* decay priority to the next level with a job available */
	for (i = priority; i >= DRM_SCHED_PRIORITY_MIN; i--) {
		if (i == DRM_SCHED_PRIORITY_NORMAL
				|| FUNC1(&ring->num_jobs[i])) {
			ring->priority = i;
			ring->funcs->set_priority(ring, i);
			break;
		}
	}

out_unlock:
	FUNC3(&ring->priority_mutex);
}