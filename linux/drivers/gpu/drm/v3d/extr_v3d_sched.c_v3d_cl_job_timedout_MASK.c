#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct v3d_job {struct v3d_dev* v3d; } ;
struct v3d_dev {int dummy; } ;
struct drm_sched_job {int dummy; } ;
typedef  enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v3d_job* FUNC3 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC4 (struct v3d_dev*,struct drm_sched_job*) ; 

__attribute__((used)) static void
FUNC5(struct drm_sched_job *sched_job, enum v3d_queue q,
		    u32 *timedout_ctca, u32 *timedout_ctra)
{
	struct v3d_job *job = FUNC3(sched_job);
	struct v3d_dev *v3d = job->v3d;
	u32 ctca = FUNC2(0, FUNC0(q));
	u32 ctra = FUNC2(0, FUNC1(q));

	if (*timedout_ctca != ctca || *timedout_ctra != ctra) {
		*timedout_ctca = ctca;
		*timedout_ctra = ctra;
		return;
	}

	FUNC4(v3d, sched_job);
}