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
struct drm_sched_rq {struct drm_gpu_scheduler* sched; int /*<<< orphan*/ * current_entity; int /*<<< orphan*/  entities; int /*<<< orphan*/  lock; } ;
struct drm_gpu_scheduler {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct drm_gpu_scheduler *sched,
			      struct drm_sched_rq *rq)
{
	FUNC1(&rq->lock);
	FUNC0(&rq->entities);
	rq->current_entity = NULL;
	rq->sched = sched;
}