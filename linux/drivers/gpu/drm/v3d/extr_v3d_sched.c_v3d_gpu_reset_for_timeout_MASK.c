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
struct v3d_dev {int /*<<< orphan*/  reset_lock; TYPE_1__* queue; } ;
struct drm_sched_job {int dummy; } ;
typedef  enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;
struct TYPE_2__ {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 int V3D_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct v3d_dev*) ; 

__attribute__((used)) static void
FUNC7(struct v3d_dev *v3d, struct drm_sched_job *sched_job)
{
	enum v3d_queue q;

	FUNC4(&v3d->reset_lock);

	/* block scheduler */
	for (q = 0; q < V3D_MAX_QUEUES; q++)
		FUNC3(&v3d->queue[q].sched, sched_job);

	if (sched_job)
		FUNC0(sched_job);

	/* get the GPU back into the init state */
	FUNC6(v3d);

	for (q = 0; q < V3D_MAX_QUEUES; q++)
		FUNC1(&v3d->queue[q].sched);

	/* Unblock schedulers and restart their jobs. */
	for (q = 0; q < V3D_MAX_QUEUES; q++) {
		FUNC2(&v3d->queue[q].sched, true);
	}

	FUNC5(&v3d->reset_lock);
}