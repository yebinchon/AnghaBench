#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* s_fence; } ;
struct etnaviv_gem_submit {scalar_t__ out_fence_id; TYPE_2__* gpu; TYPE_3__ sched_job; int /*<<< orphan*/  refcount; int /*<<< orphan*/  out_fence; int /*<<< orphan*/  ctx; } ;
struct drm_sched_entity {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  fence_lock; int /*<<< orphan*/  fence_idr; } ;
struct TYPE_6__ {int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,struct drm_sched_entity*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_sched_entity *sched_entity,
			   struct etnaviv_gem_submit *submit)
{
	int ret = 0;

	/*
	 * Hold the fence lock across the whole operation to avoid jobs being
	 * pushed out of order with regard to their sched fence seqnos as
	 * allocated in drm_sched_job_init.
	 */
	FUNC6(&submit->gpu->fence_lock);

	ret = FUNC3(&submit->sched_job, sched_entity,
				 submit->ctx);
	if (ret)
		goto out_unlock;

	submit->out_fence = FUNC0(&submit->sched_job.s_fence->finished);
	submit->out_fence_id = FUNC4(&submit->gpu->fence_idr,
						submit->out_fence, 0,
						INT_MAX, GFP_KERNEL);
	if (submit->out_fence_id < 0) {
		FUNC2(&submit->sched_job);
		ret = -ENOMEM;
		goto out_unlock;
	}

	/* the scheduler holds on to the job now */
	FUNC5(&submit->refcount);

	FUNC1(&submit->sched_job, sched_entity);

out_unlock:
	FUNC7(&submit->gpu->fence_lock);

	return ret;
}