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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

void FUNC4(struct amdgpu_ring *ring,
			      enum drm_sched_priority priority)
{
	if (!ring->funcs->set_priority)
		return;

	if (FUNC0(&ring->num_jobs[priority]) <= 0)
		return;

	FUNC1(&ring->priority_mutex);
	if (priority <= ring->priority)
		goto out_unlock;

	ring->priority = priority;
	ring->funcs->set_priority(ring, priority);

out_unlock:
	FUNC2(&ring->priority_mutex);
}