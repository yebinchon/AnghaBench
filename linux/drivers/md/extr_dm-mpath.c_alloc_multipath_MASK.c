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
struct multipath {struct dm_target* ti; int /*<<< orphan*/  queue_mode; int /*<<< orphan*/  work_mutex; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  nr_valid_paths; int /*<<< orphan*/  lock; int /*<<< orphan*/  priority_groups; } ;
struct dm_target {struct multipath* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_TYPE_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct multipath* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trigger_event ; 

__attribute__((used)) static struct multipath *FUNC6(struct dm_target *ti)
{
	struct multipath *m;

	m = FUNC3(sizeof(*m), GFP_KERNEL);
	if (m) {
		FUNC0(&m->priority_groups);
		FUNC5(&m->lock);
		FUNC2(&m->nr_valid_paths, 0);
		FUNC1(&m->trigger_event, trigger_event);
		FUNC4(&m->work_mutex);

		m->queue_mode = DM_TYPE_NONE;

		m->ti = ti;
		ti->private = m;
	}

	return m;
}