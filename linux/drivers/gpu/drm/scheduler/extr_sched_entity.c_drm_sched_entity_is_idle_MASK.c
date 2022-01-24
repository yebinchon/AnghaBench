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
struct drm_sched_entity {int /*<<< orphan*/  job_queue; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct drm_sched_entity *entity)
{
	FUNC1(); /* for list_empty to work without lock */

	if (FUNC0(&entity->list) ||
	    FUNC2(&entity->job_queue) == 0)
		return true;

	return false;
}