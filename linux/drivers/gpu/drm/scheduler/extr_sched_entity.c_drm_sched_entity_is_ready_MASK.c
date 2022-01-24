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
struct drm_sched_entity {int /*<<< orphan*/  dependency; int /*<<< orphan*/  job_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct drm_sched_entity *entity)
{
	if (FUNC1(&entity->job_queue) == NULL)
		return false;

	if (FUNC0(entity->dependency))
		return false;

	return true;
}