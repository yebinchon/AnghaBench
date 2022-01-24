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
struct drm_sched_job {int /*<<< orphan*/  queue_node; } ;
struct drm_sched_entity {TYPE_2__* rq; int /*<<< orphan*/  rq_lock; scalar_t__ stopped; int /*<<< orphan*/  job_queue; int /*<<< orphan*/  last_user; } ;
struct TYPE_6__ {int /*<<< orphan*/  group_leader; } ;
struct TYPE_5__ {TYPE_1__* sched; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_jobs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_sched_job*,struct drm_sched_entity*) ; 

void FUNC9(struct drm_sched_job *sched_job,
			       struct drm_sched_entity *entity)
{
	bool first;

	FUNC8(sched_job, entity);
	FUNC2(&entity->rq->sched->num_jobs);
	FUNC1(entity->last_user, current->group_leader);
	first = FUNC7(&entity->job_queue, &sched_job->queue_node);

	/* first job wakes up scheduler */
	if (first) {
		/* Add the entity to the run queue */
		FUNC5(&entity->rq_lock);
		if (entity->stopped) {
			FUNC6(&entity->rq_lock);

			FUNC0("Trying to push to a killed entity\n");
			return;
		}
		FUNC3(entity->rq, entity);
		FUNC6(&entity->rq_lock);
		FUNC4(entity->rq->sched);
	}
}