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
struct drm_sched_entity {unsigned int num_rq_list; int /*<<< orphan*/  fence_context; int /*<<< orphan*/  fence_seq; int /*<<< orphan*/  job_queue; int /*<<< orphan*/  rq_lock; int /*<<< orphan*/ * last_scheduled; struct drm_sched_rq* rq; struct drm_sched_rq** rq_list; int /*<<< orphan*/ * guilty; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_sched_rq** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_sched_entity*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_sched_entity *entity,
			  struct drm_sched_rq **rq_list,
			  unsigned int num_rq_list,
			  atomic_t *guilty)
{
	int i;

	if (!(entity && rq_list && (num_rq_list == 0 || rq_list[0])))
		return -EINVAL;

	FUNC4(entity, 0, sizeof(struct drm_sched_entity));
	FUNC0(&entity->list);
	entity->rq = NULL;
	entity->guilty = guilty;
	entity->num_rq_list = num_rq_list;
	entity->rq_list = FUNC3(num_rq_list, sizeof(struct drm_sched_rq *),
				GFP_KERNEL);
	if (!entity->rq_list)
		return -ENOMEM;

	for (i = 0; i < num_rq_list; ++i)
		entity->rq_list[i] = rq_list[i];

	if (num_rq_list)
		entity->rq = rq_list[0];

	entity->last_scheduled = NULL;

	FUNC5(&entity->rq_lock);
	FUNC6(&entity->job_queue);

	FUNC1(&entity->fence_seq, 0);
	entity->fence_context = FUNC2(2);

	return 0;
}