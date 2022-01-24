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
struct drm_sched_job {TYPE_3__* s_fence; } ;
struct drm_sched_entity {int /*<<< orphan*/  job_queue; int /*<<< orphan*/  last_scheduled; scalar_t__ guilty; int /*<<< orphan*/  dependency; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  finished; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dependency ) (struct drm_sched_job*,struct drm_sched_entity*) ;} ;
struct TYPE_4__ {struct drm_gpu_scheduler* sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECANCELED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_sched_job*,struct drm_sched_entity*) ; 
 struct drm_sched_job* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_sched_job*,int /*<<< orphan*/ ) ; 

struct drm_sched_job *FUNC10(struct drm_sched_entity *entity)
{
	struct drm_gpu_scheduler *sched = entity->rq->sched;
	struct drm_sched_job *sched_job;

	sched_job = FUNC8(FUNC5(&entity->job_queue));
	if (!sched_job)
		return NULL;

	while ((entity->dependency =
			sched->ops->dependency(sched_job, entity))) {
		FUNC9(sched_job, entity->dependency);

		if (FUNC4(entity))
			return NULL;
	}

	/* skip jobs from entity that marked guilty */
	if (entity->guilty && FUNC0(entity->guilty))
		FUNC3(&sched_job->s_fence->finished, -ECANCELED);

	FUNC2(entity->last_scheduled);
	entity->last_scheduled = FUNC1(&sched_job->s_fence->finished);

	FUNC6(&entity->job_queue);
	return sched_job;
}