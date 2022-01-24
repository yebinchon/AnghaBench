#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* dev; } ;
struct pgpath {int is_active; TYPE_5__ path; int /*<<< orphan*/  fail_count; TYPE_2__* pg; } ;
struct multipath {int /*<<< orphan*/  lock; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  nr_valid_paths; int /*<<< orphan*/  ti; struct pgpath* current_pgpath; } ;
struct TYPE_9__ {TYPE_1__* type; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_4__ ps; struct multipath* m; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* fail_path ) (TYPE_4__*,TYPE_5__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_UEVENT_PATH_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(struct pgpath *pgpath)
{
	unsigned long flags;
	struct multipath *m = pgpath->pg->m;

	FUNC5(&m->lock, flags);

	if (!pgpath->is_active)
		goto out;

	FUNC0("Failing path %s.", pgpath->path.dev->name);

	pgpath->pg->ps.type->fail_path(&pgpath->pg->ps, &pgpath->path);
	pgpath->is_active = false;
	pgpath->fail_count++;

	FUNC1(&m->nr_valid_paths);

	if (pgpath == m->current_pgpath)
		m->current_pgpath = NULL;

	FUNC3(DM_UEVENT_PATH_FAILED, m->ti,
		       pgpath->path.dev->name, FUNC2(&m->nr_valid_paths));

	FUNC4(&m->trigger_event);

out:
	FUNC6(&m->lock, flags);

	return 0;
}