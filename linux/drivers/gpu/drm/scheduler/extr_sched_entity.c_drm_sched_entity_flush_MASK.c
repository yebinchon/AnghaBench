#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct drm_sched_entity {int stopped; int /*<<< orphan*/  rq_lock; TYPE_1__* rq; int /*<<< orphan*/  last_user; } ;
struct drm_gpu_scheduler {int /*<<< orphan*/  job_scheduled; } ;
struct TYPE_4__ {int flags; scalar_t__ exit_code; struct task_struct* group_leader; } ;
struct TYPE_3__ {struct drm_gpu_scheduler* sched; } ;

/* Variables and functions */
 int PF_EXITING ; 
 scalar_t__ SIGKILL ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ *,struct task_struct*,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

long FUNC7(struct drm_sched_entity *entity, long timeout)
{
	struct drm_gpu_scheduler *sched;
	struct task_struct *last_user;
	long ret = timeout;

	if (!entity->rq)
		return 0;

	sched = entity->rq->sched;
	/**
	 * The client will not queue more IBs during this fini, consume existing
	 * queued IBs or discard them on SIGKILL
	 */
	if (current->flags & PF_EXITING) {
		if (timeout)
			ret = FUNC6(
					sched->job_scheduled,
					FUNC1(entity),
					timeout);
	} else {
		FUNC5(sched->job_scheduled,
				    FUNC1(entity));
	}

	/* For killed process disable any more IBs enqueue right now */
	last_user = FUNC0(&entity->last_user, current->group_leader, NULL);
	if ((!last_user || last_user == current->group_leader) &&
	    (current->flags & PF_EXITING) && (current->exit_code == SIGKILL)) {
		FUNC3(&entity->rq_lock);
		entity->stopped = true;
		FUNC2(entity->rq, entity);
		FUNC4(&entity->rq_lock);
	}

	return ret;
}