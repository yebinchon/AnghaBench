#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct mapped_device {struct dm_target* immutable_target; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
struct dm_rq_target_io {struct dm_target* ti; struct mapped_device* md; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {scalar_t__ (* busy ) (struct dm_target*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 scalar_t__ DM_MAPIO_REQUEUE ; 
 struct dm_rq_target_io* FUNC0 (struct request*) ; 
 struct dm_table* FUNC1 (struct mapped_device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,struct request*) ; 
 struct dm_target* FUNC4 (struct dm_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_rq_target_io*,struct request*,struct mapped_device*) ; 
 scalar_t__ FUNC6 (struct dm_rq_target_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mapped_device*,struct request*) ; 
 scalar_t__ FUNC9 (struct dm_target*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static blk_status_t FUNC11(struct blk_mq_hw_ctx *hctx,
			  const struct blk_mq_queue_data *bd)
{
	struct request *rq = bd->rq;
	struct dm_rq_target_io *tio = FUNC0(rq);
	struct mapped_device *md = tio->md;
	struct dm_target *ti = md->immutable_target;

	if (FUNC10(!ti)) {
		int srcu_idx;
		struct dm_table *map = FUNC1(md, &srcu_idx);

		ti = FUNC4(map, 0);
		FUNC2(md, srcu_idx);
	}

	if (ti->type->busy && ti->type->busy(ti))
		return BLK_STS_RESOURCE;

	FUNC3(md, rq);

	/* Init tio using md established in .init_request */
	FUNC5(tio, rq, md);

	/*
	 * Establish tio->ti before calling map_request().
	 */
	tio->ti = ti;

	/* Direct call is fine since .queue_rq allows allocations */
	if (FUNC6(tio) == DM_MAPIO_REQUEUE) {
		/* Undo dm_start_request() before requeuing */
		FUNC8(md, rq);
		FUNC7(md);
		return BLK_STS_RESOURCE;
	}

	return BLK_STS_OK;
}