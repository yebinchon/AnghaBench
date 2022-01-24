#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union map_info {int dummy; } map_info ;
struct request {int dummy; } ;
struct pgpath {int /*<<< orphan*/  path; TYPE_1__* pg; } ;
struct dm_mpath_io {int /*<<< orphan*/  nr_bytes; struct pgpath* pgpath; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* end_io ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_3__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct dm_mpath_io* FUNC1 (union map_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (union map_info*) ; 

__attribute__((used)) static void FUNC4(struct request *clone,
				    union map_info *map_context)
{
	if (FUNC3(map_context)) {
		/*
		 * non-NULL map_context means caller is still map
		 * method; must undo multipath_clone_and_map()
		 */
		struct dm_mpath_io *mpio = FUNC1(map_context);
		struct pgpath *pgpath = mpio->pgpath;

		if (pgpath && pgpath->pg->ps.type->end_io)
			pgpath->pg->ps.type->end_io(&pgpath->pg->ps,
						    &pgpath->path,
						    mpio->nr_bytes);
	}

	FUNC0(clone);
}