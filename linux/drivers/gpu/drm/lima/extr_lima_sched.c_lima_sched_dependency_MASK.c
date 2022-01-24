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
struct lima_sched_task {int /*<<< orphan*/  last_dep; int /*<<< orphan*/  deps; } ;
struct drm_sched_job {int dummy; } ;
struct drm_sched_entity {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct lima_sched_task* FUNC0 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_fence *FUNC3(struct drm_sched_job *job,
					       struct drm_sched_entity *entity)
{
	struct lima_sched_task *task = FUNC0(job);

	if (!FUNC1(&task->deps))
		return FUNC2(&task->deps, task->last_dep++);

	return NULL;
}