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
struct drm_sched_rq {int /*<<< orphan*/  lock; struct drm_sched_entity* current_entity; } ;
struct drm_sched_entity {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_sched_rq *rq,
				struct drm_sched_entity *entity)
{
	if (FUNC1(&entity->list))
		return;
	FUNC2(&rq->lock);
	FUNC0(&entity->list);
	if (rq->current_entity == entity)
		rq->current_entity = NULL;
	FUNC3(&rq->lock);
}