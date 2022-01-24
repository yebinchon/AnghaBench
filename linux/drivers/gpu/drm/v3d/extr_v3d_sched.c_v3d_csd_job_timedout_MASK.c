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
typedef  scalar_t__ u32 ;
struct v3d_dev {int dummy; } ;
struct TYPE_2__ {struct v3d_dev* v3d; } ;
struct v3d_csd_job {scalar_t__ timedout_batches; TYPE_1__ base; } ;
struct drm_sched_job {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_CSD_CURRENT_CFG4 ; 
 struct v3d_csd_job* FUNC1 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct v3d_dev*,struct drm_sched_job*) ; 

__attribute__((used)) static void
FUNC3(struct drm_sched_job *sched_job)
{
	struct v3d_csd_job *job = FUNC1(sched_job);
	struct v3d_dev *v3d = job->base.v3d;
	u32 batches = FUNC0(0, V3D_CSD_CURRENT_CFG4);

	/* If we've made progress, skip reset and let the timer get
	 * rearmed.
	 */
	if (job->timedout_batches != batches) {
		job->timedout_batches = batches;
		return;
	}

	FUNC2(v3d, sched_job);
}