#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* type; } ;
struct priority_group {TYPE_2__ ps; } ;
struct pgpath {int dummy; } ;
struct multipath {int /*<<< orphan*/  lock; struct pgpath* current_pgpath; int /*<<< orphan*/  current_pg; } ;
struct dm_path {int dummy; } ;
struct TYPE_3__ {struct dm_path* (* select_path ) (TYPE_2__*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 struct pgpath* FUNC0 (int /*<<< orphan*/ ) ; 
 struct priority_group* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct multipath*,struct priority_group*) ; 
 struct pgpath* FUNC3 (struct dm_path*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dm_path* FUNC6 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct pgpath *FUNC8(struct multipath *m,
					struct priority_group *pg,
					size_t nr_bytes)
{
	unsigned long flags;
	struct dm_path *path;
	struct pgpath *pgpath;

	path = pg->ps.type->select_path(&pg->ps, nr_bytes);
	if (!path)
		return FUNC0(-ENXIO);

	pgpath = FUNC3(path);

	if (FUNC7(FUNC1(m->current_pg) != pg)) {
		/* Only update current_pgpath if pg changed */
		FUNC4(&m->lock, flags);
		m->current_pgpath = pgpath;
		FUNC2(m, pg);
		FUNC5(&m->lock, flags);
	}

	return pgpath;
}