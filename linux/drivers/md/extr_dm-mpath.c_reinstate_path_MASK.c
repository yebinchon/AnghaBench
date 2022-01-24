#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  work; } ;
struct pgpath {int is_active; TYPE_6__ path; TYPE_3__ activate_path; TYPE_2__* pg; } ;
struct multipath {TYPE_7__* ti; int /*<<< orphan*/  lock; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  pg_init_in_progress; TYPE_2__* current_pg; scalar_t__ hw_handler_name; int /*<<< orphan*/ * current_pgpath; int /*<<< orphan*/  nr_valid_paths; } ;
struct TYPE_14__ {int /*<<< orphan*/  table; } ;
struct TYPE_12__ {TYPE_1__* type; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_5__ ps; struct multipath* m; } ;
struct TYPE_8__ {int (* reinstate_path ) (TYPE_5__*,TYPE_6__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_UEVENT_PATH_REINSTATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmpath_handlerd ; 
 int /*<<< orphan*/  FUNC5 (struct multipath*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (TYPE_5__*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC11(struct pgpath *pgpath)
{
	int r = 0, run_queue = 0;
	unsigned long flags;
	struct multipath *m = pgpath->pg->m;
	unsigned nr_valid_paths;

	FUNC8(&m->lock, flags);

	if (pgpath->is_active)
		goto out;

	FUNC0("Reinstating path %s.", pgpath->path.dev->name);

	r = pgpath->pg->ps.type->reinstate_path(&pgpath->pg->ps, &pgpath->path);
	if (r)
		goto out;

	pgpath->is_active = true;

	nr_valid_paths = FUNC2(&m->nr_valid_paths);
	if (nr_valid_paths == 1) {
		m->current_pgpath = NULL;
		run_queue = 1;
	} else if (m->hw_handler_name && (m->current_pg == pgpath->pg)) {
		if (FUNC6(kmpath_handlerd, &pgpath->activate_path.work))
			FUNC1(&m->pg_init_in_progress);
	}

	FUNC3(DM_UEVENT_PATH_REINSTATED, m->ti,
		       pgpath->path.dev->name, nr_valid_paths);

	FUNC7(&m->trigger_event);

out:
	FUNC9(&m->lock, flags);
	if (run_queue) {
		FUNC4(m->ti->table);
		FUNC5(m);
	}

	return r;
}