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
typedef  union map_info {int dummy; } map_info ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int /*<<< orphan*/  rq_disk; int /*<<< orphan*/ * biotail; int /*<<< orphan*/  bio; } ;
struct TYPE_10__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_5__ path; TYPE_3__* pg; } ;
struct multipath {int /*<<< orphan*/  pg_init_in_progress; int /*<<< orphan*/  flags; int /*<<< orphan*/  current_pgpath; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {size_t nr_bytes; struct pgpath* pgpath; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
struct TYPE_9__ {TYPE_2__* type; } ;
struct TYPE_8__ {TYPE_4__ ps; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* start_io ) (TYPE_4__*,TYPE_5__*,size_t) ;} ;
struct TYPE_6__ {struct block_device* bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 int DM_MAPIO_DELAY_REQUEUE ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_REQUEUE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
 struct pgpath* FUNC1 (int /*<<< orphan*/ ) ; 
 int REQ_FAILFAST_TRANSPORT ; 
 int REQ_NOMERGE ; 
 int /*<<< orphan*/  FUNC2 (struct pgpath*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC4 (struct block_device*) ; 
 struct request* FUNC5 (struct request_queue*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct request_queue*) ; 
 size_t FUNC7 (struct request*) ; 
 struct pgpath* FUNC8 (struct multipath*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct multipath*) ; 
 struct dm_mpath_io* FUNC10 (union map_info*) ; 
 scalar_t__ FUNC11 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC12 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_5__*,size_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dm_target *ti, struct request *rq,
				   union map_info *map_context,
				   struct request **__clone)
{
	struct multipath *m = ti->private;
	size_t nr_bytes = FUNC7(rq);
	struct pgpath *pgpath;
	struct block_device *bdev;
	struct dm_mpath_io *mpio = FUNC10(map_context);
	struct request_queue *q;
	struct request *clone;

	/* Do we need to select a new pgpath? */
	pgpath = FUNC1(m->current_pgpath);
	if (!pgpath || !FUNC14(MPATHF_QUEUE_IO, &m->flags))
		pgpath = FUNC8(m, nr_bytes);

	if (!pgpath) {
		if (FUNC11(m))
			return DM_MAPIO_DELAY_REQUEUE;
		FUNC9(m);	/* Failed */
		return DM_MAPIO_KILL;
	} else if (FUNC14(MPATHF_QUEUE_IO, &m->flags) ||
		   FUNC14(MPATHF_PG_INIT_REQUIRED, &m->flags)) {
		FUNC12(m);
		return DM_MAPIO_DELAY_REQUEUE;
	}

	mpio->pgpath = pgpath;
	mpio->nr_bytes = nr_bytes;

	bdev = pgpath->path.dev->bdev;
	q = FUNC4(bdev);
	clone = FUNC5(q, rq->cmd_flags | REQ_NOMERGE,
			BLK_MQ_REQ_NOWAIT);
	if (FUNC0(clone)) {
		/* EBUSY, ENODEV or EWOULDBLOCK: requeue */
		if (FUNC6(q)) {
			FUNC3(&m->pg_init_in_progress);
			FUNC2(pgpath);
			return DM_MAPIO_DELAY_REQUEUE;
		}

		/*
		 * blk-mq's SCHED_RESTART can cover this requeue, so we
		 * needn't deal with it by DELAY_REQUEUE. More importantly,
		 * we have to return DM_MAPIO_REQUEUE so that blk-mq can
		 * get the queue busy feedback (via BLK_STS_RESOURCE),
		 * otherwise I/O merging can suffer.
		 */
		return DM_MAPIO_REQUEUE;
	}
	clone->bio = *(clone->biotail = NULL);
	clone->rq_disk = bdev->bd_disk;
	clone->cmd_flags |= REQ_FAILFAST_TRANSPORT;
	*__clone = clone;

	if (pgpath->pg->ps.type->start_io)
		pgpath->pg->ps.type->start_io(&pgpath->pg->ps,
					      &pgpath->path,
					      nr_bytes);
	return DM_MAPIO_REMAPPED;
}