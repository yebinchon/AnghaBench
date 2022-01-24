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
struct drm_sched_job {int /*<<< orphan*/  node; int /*<<< orphan*/  id; int /*<<< orphan*/  s_fence; TYPE_1__* s_priority; struct drm_sched_entity* entity; struct drm_gpu_scheduler* sched; } ;
struct drm_sched_entity {TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int sched_rq; int /*<<< orphan*/  job_id_count; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_sched_entity*,void*) ; 

int FUNC4(struct drm_sched_job *job,
		       struct drm_sched_entity *entity,
		       void *owner)
{
	struct drm_gpu_scheduler *sched;

	FUNC2(entity);
	if (!entity->rq)
		return -ENOENT;

	sched = entity->rq->sched;

	job->sched = sched;
	job->entity = entity;
	job->s_priority = entity->rq - sched->sched_rq;
	job->s_fence = FUNC3(entity, owner);
	if (!job->s_fence)
		return -ENOMEM;
	job->id = FUNC1(&sched->job_id_count);

	FUNC0(&job->node);

	return 0;
}