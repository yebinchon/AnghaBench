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
struct drm_sched_rq {int dummy; } ;
struct drm_sched_entity {int num_rq_list; int /*<<< orphan*/  rq_lock; struct drm_sched_rq* rq; int /*<<< orphan*/  last_scheduled; int /*<<< orphan*/  job_queue; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 struct drm_sched_rq* FUNC2 (struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_sched_rq*,struct drm_sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct drm_sched_entity *entity)
{
	struct dma_fence *fence;
	struct drm_sched_rq *rq;

	if (FUNC6(&entity->job_queue) || entity->num_rq_list <= 1)
		return;

	fence = FUNC0(entity->last_scheduled);
	if (fence && !FUNC1(fence))
		return;

	rq = FUNC2(entity);
	if (rq == entity->rq)
		return;

	FUNC4(&entity->rq_lock);
	FUNC3(entity->rq, entity);
	entity->rq = rq;
	FUNC5(&entity->rq_lock);
}