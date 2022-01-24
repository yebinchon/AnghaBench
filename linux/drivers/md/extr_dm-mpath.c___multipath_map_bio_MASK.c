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
struct TYPE_10__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_5__ path; TYPE_3__* pg; } ;
struct multipath {int /*<<< orphan*/  hw_handler_name; } ;
struct dm_mpath_io {int /*<<< orphan*/  nr_bytes; struct pgpath* pgpath; } ;
struct bio {int /*<<< orphan*/  bi_opf; scalar_t__ bi_status; } ;
struct TYPE_9__ {TYPE_2__* type; } ;
struct TYPE_8__ {TYPE_4__ ps; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* start_io ) (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_REQUEUE ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ FUNC0 (struct pgpath*) ; 
 int /*<<< orphan*/  REQ_FAILFAST_TRANSPORT ; 
 struct pgpath* FUNC1 (struct multipath*,struct bio*) ; 
 struct pgpath* FUNC2 (struct multipath*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct multipath*) ; 
 scalar_t__ FUNC5 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct multipath *m, struct bio *bio,
			       struct dm_mpath_io *mpio)
{
	struct pgpath *pgpath;

	if (!m->hw_handler_name)
		pgpath = FUNC2(m, bio);
	else
		pgpath = FUNC1(m, bio);

	if (FUNC0(pgpath))
		return DM_MAPIO_SUBMITTED;

	if (!pgpath) {
		if (FUNC5(m))
			return DM_MAPIO_REQUEUE;
		FUNC4(m);
		return DM_MAPIO_KILL;
	}

	mpio->pgpath = pgpath;

	bio->bi_status = 0;
	FUNC3(bio, pgpath->path.dev->bdev);
	bio->bi_opf |= REQ_FAILFAST_TRANSPORT;

	if (pgpath->pg->ps.type->start_io)
		pgpath->pg->ps.type->start_io(&pgpath->pg->ps,
					      &pgpath->path,
					      mpio->nr_bytes);
	return DM_MAPIO_REMAPPED;
}