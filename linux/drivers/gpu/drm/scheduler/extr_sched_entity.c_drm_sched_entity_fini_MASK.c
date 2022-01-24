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
struct drm_sched_entity {int /*<<< orphan*/  rq_list; int /*<<< orphan*/ * last_scheduled; int /*<<< orphan*/ * dependency; int /*<<< orphan*/  cb; int /*<<< orphan*/  job_queue; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct drm_sched_entity *entity)
{
	struct drm_gpu_scheduler *sched = NULL;

	if (entity->rq) {
		sched = entity->rq->sched;
		FUNC3(entity->rq, entity);
	}

	/* Consumption of existing IBs wasn't completed. Forcefully
	 * remove them here.
	 */
	if (FUNC7(&entity->job_queue)) {
		if (sched) {
			/* Park the kernel for a moment to make sure it isn't processing
			 * our enity.
			 */
			FUNC5(sched->thread);
			FUNC6(sched->thread);
		}
		if (entity->dependency) {
			FUNC1(entity->dependency,
						  &entity->cb);
			FUNC0(entity->dependency);
			entity->dependency = NULL;
		}

		FUNC2(entity);
	}

	FUNC0(entity->last_scheduled);
	entity->last_scheduled = NULL;
	FUNC4(entity->rq_list);
}